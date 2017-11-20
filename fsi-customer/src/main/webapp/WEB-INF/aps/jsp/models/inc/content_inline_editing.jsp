<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<wp:resourceURL />administration/js/jquery-2.2.4.min.js"></script>
<script src="<wp:resourceURL />administration/js/inline-editing/jquery-ui-1.10.1.custom.min.js"></script>
<script src="<wp:resourceURL />administration/js/inline-editing/jqueryui-editable.min.js"></script>
<link rel="stylesheet" href="<wp:resourceURL />administration/css/jquery-ui-1.10.1.custom.css" media="screen"/>
<link rel="stylesheet" href="<wp:resourceURL />administration/css/jqueryui-editable.css" media="screen"/>
<script src="<wp:resourceURL />static/js/pdf.js"></script>
<script src="<wp:resourceURL />static/js/pdf.worker.js"></script>

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

    });
</script>

<!-- FORM HANDLER -->

<script>

    $(function () {
        function getBase64(file) {

            var def = $.Deferred();

            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function () {
                def.resolve(reader.result);

            };
            reader.onerror = function (error) {
                def.reject(error);
            };

            return def.promise();
        }

        var processStep = $('.customer-process-step');
        processStep.first().addClass('active');

        var stepCount = $('.customer-process-step').length;
        var currentStepIndex = 0;


        function buildForm(formElement, callback) {


            var inputFields = formElement.find('input[type="text"],input[type="email"],input[type="number"],select');
            var json = {};
            inputFields.each(function (i, input) {
                var key = input.getAttribute('name');
                json[key] = input.value;

            });
            callback(json);
        }

        function uploadFiles(formElement, username, taskId, containerId) {
            formElement.find('input[type="file"]').each(function (index, element) {
                var file = element.files[0];
                if (file) {
                    getBase64(file).done( function (result) {
                        var body = {
                            containerId: containerId,
                            taskId: taskId,
                            user: username,
                            indentifier: "",
                            name: file.name,
                            link: "",
                            size: file.size,
                            lastModified: file.lastModifiedDate,
                            content: result
                        };

                        console.log('CALL REST ', body);

                    })

                }


            });
        }


        function getFirstTaskId(username) {
            var url = '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/userTask?user=' + username;
            console.log(url);


            //return $.get(url);
            var def = $.Deferred();

            setTimeout(function () {

                def.resolve({
                    taskId: "1",
                    taskContainerId: "2r23r23r32"
                });

            }, 3000);


            return def.promise();

        }


        var username = "${currentUser.username}";

        getFirstTaskId(username).done(function (taskData) {
            console.log(taskData);
            var taskId = taskData.taskId;
            var containerId = taskData.taskContainerId;

            $('.customer-process-next').click(function () {

                var currentStep = $('.customer-process-step.active');

                if (currentStepIndex < stepCount - 1) {
                    ++currentStepIndex;
                    currentStep.removeClass('active');
                    processStep.eq(currentStepIndex).addClass('active');
                    $('.bullet-progress-item').eq(currentStepIndex).addClass('active');
                }

                if (currentStepIndex < stepCount) {
                    buildForm(currentStep, function (json) {
                        console.log("json :", json);
                        var url = '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/setTaskState';
                        json.taskId = taskId;
                        json.containerId = containerId;

                        $.ajax(url, {
                            data: {taskState: json},
                            method: 'PUT',
                            contentType: 'application/json',
                            error: function (data, status, error) {
                                console.error(error);
                            }
                        });

                    });
                    uploadFiles(currentStep, username, taskId, containerId);

                }
                else {
                    console.log('fine');
                }

            });

        });

    });


</script>