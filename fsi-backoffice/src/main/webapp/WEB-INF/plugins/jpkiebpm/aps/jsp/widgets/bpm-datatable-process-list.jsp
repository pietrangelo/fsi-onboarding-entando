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

<style>
    .dataTables_wrapper {
        margin: 0;
    }
</style>
<script>


    $(document).ready(function () {

        var loadDataTable = function (url, idTable) {

            $.get(url, function (data) {

                var items = data.response.result.processInstanceList.list || [];
                if (!Array.isArray(items)) {
                    items = [items]
                }
                items = items.map(function (item) {
                    item['start-date'] = new Date(item['start-date']).toLocaleString();
                    item['dueDate'] = new Date(item['dueDate']).toLocaleString();
                    item['dateofbirth'] = new Date(item['dateofbirth']).toLocaleString();
                    switch (item['status']) {
                        case 1 :
                            item['status'] = 'Started';
                            break;
                        case 2 :
                            item['status'] = 'In Progress';
                            break;
                        case 3 :
                            item['status'] = 'Completed';
                            break;
                    }
                    delete item['@xsi.type'];
                    var url = '<wp:info key="systemParam" paramName="applicationBaseURL" /><wp:info key="currentLang"/>/account_executive_customer.page?configId=${id}&processInstanceId=' + item['process-instance-id'];

                    item['viewLink'] = '<a href ="' + url + '"><button type="button" class="class-open-bpm-task-list-modal-form-details btn btn-success btn-sm" style="margin-right:10px;">VIEW</button></a>';

                    return item;
                });

                var extraConfig = {};

                extraConfig.columnDefinition = data.response.result.processInstanceList["datatable-field-definition"].fields;
                extraConfig.columnDefinition.push({
                    "title": "Actions",
                    "data": "viewLink",
                    "visible": true,
                    "position": -1

                });
                org.entando.datatable.CustomDatatable(items, idTable, extraConfig);
                if (items.length) {

                    var table = $(idTable).DataTable();
                    table.order([
                        extraConfig.columnDefinition.find(function (item) {

                            if (item.data === 'start-date') {
                                item.position = index + 1;
                                return item;
                            }
                        }).position,
                        'desc'
                    ]);
                    table.draw();
                }


            });
        }


        var context = "<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/";
        var url = context + "processInstanceListPlus.json?configId=${id}";

        loadDataTable(url, '#data-table-process-list');

    });
</script>

<table id="data-table-process-list" class="display nowrap" cellspacing="0" width="100%"></table>
process
