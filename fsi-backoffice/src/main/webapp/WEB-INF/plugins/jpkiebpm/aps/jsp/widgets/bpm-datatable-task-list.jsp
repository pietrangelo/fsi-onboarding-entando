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


        var optModal = {
            //appendTo: "#data-table-active",
            minWidth: 500,
            modal: true,
            show: {effect: "fadego", duration: 800},
            resizable: true,
            position: {my: "center top", at: "center top+10%"}
        };


        function getTaskList(context) {

            var username = '${currentUser.username}';

            var url = "";
            if (username === 'legal' || username === 'admin' || username === 'Manager')
                url = context + "legalWorkerTasks.json";
            else if (username === 'knowledge') {
                url = context + "knowledgeWorkerTasks.json";
            }

            var def = $.Deferred();
            $.get(url).then(function (taskData) {
                var taskList = getDeep(taskData, 'response.result.taskList.list');
                if (taskList) {


                    taskList = taskList.map(function (item) {
                        item['activated'] = new Date(item['activated']).toLocaleString();
                        item['created'] = new Date(item['created']).toLocaleString();
                        var url = '<wp:info key="systemParam" paramName="applicationBaseURL" /><wp:info key="currentLang"/>/backoffice.page?configId=${id}&processInstanceId=' + item['processInstanceId'];
                        item['viewLink'] = '<a href ="' + url + '"><button type="button" class="btn btn-success btn-sm">REVIEW</button></a>';
                        return item;
                    });


                    def.resolve(Array.isArray(taskList) ? taskList : [taskList]);
                }
                else def.resolve([]);

            }, function (error) {
                console.error(error, arguments);
                var message = getDeep(error, "responseJSON.response.errors.error.message");
                if (message && message.match(/^Tasks for user .+ does not exist$/)) {
                    def.resolve([]);
                }
                else
                    def.reject(error);


            });

            return def.promise();
        }

        function getDiagram(url) {
            var def = $.Deferred();
            $.get(url).then(function (data) {
                var diagram = getDeep(data, 'response.result');
                if (diagram) {
                    def.resolve(data.response.result)
                }
                else def.reject("no diagram found");

            }, function (error) {
                console.error(error);
                def.reject(error);
            })
            return def.promise();
        }

        var loadDataTable = function (context, url, idTable) {


            getTaskList(context).done(function (task) {


                $.get(url, function (data) {

                    var items = task || []; //data.response.result.taskList.list || [] ;


                    var extraConfig = {
                        columnDefinition: data.response.result.taskList["datatable-field-definition"].fields
                    };

                    debugger;
                    //task-list

                    <wp:ifauthorized groupName="customers">

                    extraConfig.buttons = [{
                        html: '<button type="button" class="btn btn-success btn-sm">DIAGRAM</button>',
                        onClick: function (ev, data) {
                            var url = context + "diagram.json?configId=${id}&processInstanceId=" + data['processInstanceId'];
                            getDiagram(url)
                                .done(function (diagram) {
                                    $('#bpm-task-list-modal-diagram-data').attr("src", "data:image/svg+xml;utf8," + diagram);
                                    optModal.title = "BPM Process Diagram";
                                    optModal.show.effect = "fold";
                                    optModal.position = {my: "center", at: "center"};
                                    $('#bpm-task-list-modal-diagram').dialog(optModal);
                                })
                                .fail(function (error) {
                                    console.log(error);
                                })

                        }
                    }];

                    extraConfig.columnDefinition.push({
                        "title": "Actions",
                        "data": "viewLink",
                        "visible": true,
                        "position": -1

                    });
                    </wp:ifauthorized>


                    org.entando.datatable.CustomDatatable(items, idTable, extraConfig);
                    if (items.length) {

                        var table = $(idTable).DataTable();

                        table.order([extraConfig.columnDefinition.find(function (item, index) {
                            if (item.data === 'id') {
                                item.position = index;
                                return item;
                            }
                        }).position, 'desc']);
                        table.draw();
                    }

                    setInterval(function () {
                        getTaskList(context).done(function (data) {
                            var table = $(idTable).DataTable();
                            table.clear();
                            table.rows.add(data);
                            table.draw();
                        })
                    }, 30000);

                });

            });


        };

        var context = "<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/";
        var url = context + "tasks.json?configId=${id}";

        loadDataTable(context, url, '#data-table-task-list');
    });
</script>

<table id="data-table-task-list" class="display nowrap" cellspacing="0" width="100%"></table>

<div id="bpm-task-list-modal-diagram">
    <img id="bpm-task-list-modal-diagram-data" class="img-responsive"/>
</div>