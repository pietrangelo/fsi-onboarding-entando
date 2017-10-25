<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<wp:resourceURL />administration/js/jquery-2.2.4.min.js"></script>
<script src="<wp:resourceURL />administration/js/inline-editing/jquery-ui-1.10.1.custom.min.js"></script>
<script src="<wp:resourceURL />administration/js/inline-editing/jqueryui-editable.min.js"></script>
<link rel="stylesheet" href="<wp:resourceURL />administration/css/jquery-ui-1.10.1.custom.css" media="screen"/>
<link rel="stylesheet" href="<wp:resourceURL />administration/css/jqueryui-editable.css" media="screen"/>

<!-----------inclusione x-editable inline------------------------>
<wp:ifauthorized permission="superuser">
    <script>
        $(function () {
            setTimeout(function () {
                //toggle `popup` / `inline` mode
                $.fn.editable.defaults.mode = 'inline';
                $('.editLabel').editable({
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/i18nlabel',
                    send: 'always',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "i18nLabel": {
                                "key": params.name,
                                "labels": [
                                    {
                                        "langCode": "<wp:info key="currentLang" />",
                                        "value": params.value
                                    }
                                ]
                            }
                        });
                    }
                });
                //make status editable
                $('.editLabelText').editable({
                    type: 'textarea',
                    rows: 10,
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/i18nlabel',
                    send: 'always',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "i18nLabel": {
                                "key": params.name,
                                "labels": [
                                    {
                                        "langCode": "<wp:info key="currentLang" />",
                                        "value": params.value
                                    }
                                ]
                            }
                        });
                    }
                });
                $('.editContent').editable({
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/content',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    pk: function () {
                        return $(this).data("content-id");
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "contentAttribute": {
                                "contentId": params.pk,
                                "attributeName": $(this).data("attr-id"),
                                "langCode": "en",
                                "value": params.value
                            }
                        });
                    }
                });
                //make status editable
                $('.editContentText').editable({
                    type: 'textarea',
                    rows: 10,
                    cols: 50,
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/content',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    pk: function () {
                        return $(this).data("content-id");
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "contentAttribute": {
                                "contentId": params.pk,
                                "attributeName": $(this).data("attr-id"),
                                "langCode": "en",
                                "value": params.value
                            }
                        });
                    }
                });
            }, 500);
        });
    </script>
</wp:ifauthorized>

<!-----------END inclusione x-editable inline------------------------>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });


//        charts data
        c3.generate({
            bindto: '#torta',
            data: {
                columns: [
                    ['Signedup-Application in Progress', 30],
                    ['Signups-Application non completed', 120],
                    ['Abandoned', 60]
                ],
                colors: {
                    data1: '#3498DB',
                    data2: '#CCCCCC',
                    Abandoned: '#ED796D'
                },
                type: 'pie'
            }
        });
        Morris.Donut({
            element: 'morris-donut-chart',
            data: [{label: "Pending", value: 12},
                {label: "Complete", value: 30},
                {label: "Suspended", value: 20}],
            resize: true,
            colors: ['#F1C40F', '#2ECC71', '#E74C3C'],
        });
    });
</script>



