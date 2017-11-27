<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/jpkiebpm-aps-core" prefix="jpkie" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jpkie:datatable widgetConfigInfoIdVar="configId"/>
<c:set var="id" value="${configId}"/>

<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/jquery.validate.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/additional-methods.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/jquery-ui.js"></script>
<link rel="stylesheet" href="<wp:resourceURL />plugins/jpkiebpm/static/css/jpkie.css" media="screen"/>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/custom-data-table.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/lib/dynamic-form/jquery.dform-1.1.0.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/dynamic-form.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/jquery.dataTables.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/dataTables.buttons.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/jszip.min.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/buttons.html5.min.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/buttons.colVis.min.js"></script>
<script src="<wp:resourceURL />plugins/jpkiebpm/static/js/dataTables.responsive.min.js"></script>
<link rel="stylesheet" href="<wp:resourceURL />plugins/jpkiebpm/static/css/jquery-ui.css" media="screen"/>
<link rel="stylesheet" href="<wp:resourceURL />plugins/jpkiebpm/static/css/buttons.dataTables.min.css" media="screen"/>
<link rel="stylesheet" href="<wp:resourceURL />plugins/jpkiebpm/static/css/jquery.dataTables.min.css" media="screen"/>
<link rel="stylesheet" href="<wp:resourceURL />plugins/jpkiebpm/static/css/responsive.dataTables.min.css"
      media="screen"/>

<script>


    $(document).ready(function () {

        var loadDataTable = function (url, idTable, extraConfig) {

            $.get(url, function (data) {

                var items = data.response.result.processInstanceList.list || [];
                items = items.map(function (item) {
                    item['start-date'] = new Date(item['start-date']).toLocaleString();
                    item['dueDate'] = new Date(item['dueDate']).toLocaleString();
                    item['dateofbirth'] = new Date(item['dateofbirth']).toLocaleString();
                    switch (item['status']) {
                        case 1 : item['status'] ='Started'; break;
                        case 2 : item['status'] ='In Progress'; break;
                        case 3 : item['status'] ='Completed'; break;
                    }
                    delete item['@xsi.type'];

                    return item;
                });


                extraConfig.columnDefinition = data.response.result.processInstanceList["datatable-field-definition"].fields;
                org.entando.datatable.CustomDatatable(items, idTable, extraConfig);

            });
        }

        console.log('processlist');
        var configId = "${id}";

        var context = "<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/";
        var url = context + "processInstanceListPlus.json?configId=${id}";

        var extraBtns = [
            {
                html: '<button type="button" class="class-open-bpm-task-list-modal-form-details btn btn-success btn-sm" style="margin-right:10px;">VIEW</button>',
                onClick: function (ev, data) {
                    var url = '<wp:info key="systemParam" paramName="applicationBaseURL" /><wp:info key="currentLang"/>/account_executive_customer.page';
                    window.location = url;
                }
            }
        ];


        var extraConfig = {
            buttonsColumnTitle: "Actions",
            buttons: extraBtns,
            onClickRow: function (ev, rowData) {

            }
        };
        loadDataTable(url, '#data-table-process-list',extraConfig);

    });
</script>

<table id="data-table-process-list" class="display nowrap" cellspacing="0" width="100%"></table>process