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

    function addRow(data, label, index) {
        var html = "<tr><td>" + label + "</td><td>" + data[index] + "</td></tr>"
        return data[index] === undefined ? "" : html;
    }

    function getHtmlListFragment(src, label) {
        if (!src) {
            return '';
        }
        var html = "<ul>";
        if (Array.isArray(src)) {
            src.forEach(function (value) {
                html += "<li>" + value + "</li>";
            });
        }
        else if (Array.isArray(src[label])) {
            src[label].forEach(function (value) {
                html += "<li>" + value + "</li>";
            });
        }
        else {
            html += "<li>" + (src[label] === undefined ? "" : src[label]) + "</li>";
        }
        html += "</ul>"
        return html;
    }

    function getTemplateTaskDetail(data) {
        var template =
            "<tr><td>Task id</td><td>" + data['task-id'] + "</td></tr>\n" +
            "<tr><td>Task name</td><td>" + data['task-name'] + "</td></tr>\n" +
            "<tr><td>Task form</td><td>" + data['task-form'] + "</td></tr>\n" +
            "<tr><td>Task priority</td><td>" + data['task-priority'] + "</td></tr>\n" +
            "<tr><td>Task status</td><td>" + data['task-status'] + "</td></tr>\n" +
            "<tr><td>Actual Owner</td><td>" + data['task-actual-owner'] + "</td></tr>\n" +
            "<tr><td>Created by</td><td>" + data['task-created-by'] + "</td></tr>\n" +
            "<tr><td>Created On</td><td>" + data['task-created-on'] + "</td></tr>\n" +
            "<tr><td>Expiration Time</td>" + data['task-expiration-time'] + "<td></td></tr>\n" +
            "<tr><td>Skippable</td><td>" + data['task-skippable'] + "</td></tr>\n" +
            "<tr><td>Workitem Id</td><td>" + data['task-workitem-id'] + "</td></tr>\n" +
            "<tr><td>Process Instance</td>" + data['task-process-instance-id'] + "<td></td></tr>\n" +
            "<tr><td>Parent Id</td><td>" + data['task-parent-id'] + "</td></tr>\n" +
            "<tr><td>Container Id</td><td>" + data['task-container-id'] + "</td></tr>\n" +
            "<tr><td>Potential Owners</td><td>" + getHtmlListFragment(data['potential-owners'], 'task-pot-owners') + "</td></tr>\n" +
            "<tr><td>Excluded Owner</td><td>" + getHtmlListFragment(data['excluded-owners'], 'task-exc-owners') + "</td></tr>\n" +
            "<tr><td>Business Admin</td><td>" + getHtmlListFragment(data['business-admins'], 'task-business-admins') + "</td></tr>";
        return template;
    }


    $(document).ready(function () {


        function getTaskList(context) {

            var username = '${currentUser.username}';

            var url = "";
            if (username === 'legal' || username === 'admin' || username === 'Manager' )
                url = context + "legalWorkerTasks.json";
            else if (username === 'knowledge') {
                url = context + "knowledgeWorkerTasks.json";
            }

            var def = $.Deferred();
            $.get(url).then(function (taskData) {
                var taskList = getDeep(taskData, 'response.result.taskList.list');
                def.resolve(Array.isArray(taskList) ? taskList : [taskList]);
            }, function (error) {
                console.log(error, arguments);
                var message = getDeep(error, "responseJSON.response.errors.error.message");
                if (message && message.match(/^Tasks for user .+ does not exist$/))  {
                    def.resolve([]);
                }
                else
                    def.reject(error);


            });

            return def.promise();
        }


        var loadDataTable = function (context,url, idTable) {


            getTaskList(context).done(function (legalTask) {


                $.get(url, function (data) {
                    //console.log("data: ", data);
                    var items = legalTask || []; //data.response.result.taskList.list || [] ;
                    //console.log("items: ", items);
                    if (items) {
                        items = items.map(function (item) {
                            item['activated'] = new Date(item['activated']).toLocaleString();
                            item['created'] = new Date(item['created']).toLocaleString();

                            var url = '<wp:info key="systemParam" paramName="applicationBaseURL" /><wp:info key="currentLang"/>/backoffice.page?configId=${id}&processInstanceId='+item['processInstanceId'];

                            item['viewLink'] = '<a href ="'+url+'"><button type="button" class="class-open-bpm-task-list-modal-form-details btn btn-success btn-sm" style="margin-right:10px;">REVIEW</button></a>';



                            return item;
                        });
                    }

                    var extraConfig = {};
                    var username = '${currentUser.username}';
                    if  (username === 'admin' || username === 'Manager') {
                        extraConfig = {};
                    }





                    extraConfig.columnDefinition = data.response.result.taskList["datatable-field-definition"].fields;
                    extraConfig.columnDefinition.push({
                        "title": "Actions",
                        "data": "viewLink",
                        "visible": true,
                        "position": -1

                    });
                    org.entando.datatable.CustomDatatable(items, idTable, extraConfig);


                });

            });


        };

        var context = "<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/";
        var url = context + "tasks.json?configId=${id}";

        loadDataTable(context,url, '#data-table-task-list');
    });
</script>

<table id="data-table-task-list" class="display nowrap" cellspacing="0" width="100%"></table>





