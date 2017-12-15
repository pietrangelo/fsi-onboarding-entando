<%@ taglib prefix="wp" uri="/aps-core" %>
<style>
    .fsi-pdf-document .pdf-wrapper {
        display: flex;
        background: #404040;
        min-height: 700px;
    }

    .fsi-pdf-document .pdf-stuff {
        flex-grow: 10;
    }

    .fsi-pdf-document #pdf-viewer {
        border: none;
    }

    .fsi-pdf-document .form-stuff {
        flex-grow: 2;
        width: 300;
    }

    .fsi-pdf-document #fsi-pdf-check {
        padding: 0 10px;
        font-family: "Open Sans", sans-serif;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field {
        position: relative;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field-row {
        margin-top: 15px;
        background: #FFFFFF;
        color: #696C6E;
        font-size: 13px;
        height: 30px;
        transition: height 300ms;

        display: flex;
        position: relative;
        overflow: hidden;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field .pdf-field-row:before {
        content: "?";
        font-family: "FontAwesome";
        font-size: 16px;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 0px;
        transition: width 300ms;
        background: #FFFFFF;
        color: #FFFFFF;
        width: 0px;
        overflow: hidden;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.marked .pdf-field-row:before {
        width: 30px;
        transition: width 300ms;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.approved .pdf-field-row:before {
        content: "\f00c";
        background: #00ab89;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.rejected .pdf-field-row:before {
        content: "\f00d";
        background: #be0100;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.expanded .pdf-field-row {
        height: 60px;
        transition: height 300ms;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field .pdf-field-labels {
        padding: 5px 10px;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field .pdf-field-value {
        visibility: hidden;
        font-size: 20px;
        font-weight: 300;
        display: inline-block;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.expanded .pdf-field-value {
        visibility: visible;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field .pdf-field-tools {
        position: absolute;
        top: 5px;
        right: 5px;
        font-size: 13px;
        color: #C4C4C4;
        user-select: none;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field .pdf-field-tools .fa {
        cursor: pointer;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field .pdf-field-edit-btn,
    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field .pdf-field-edit-ok-btn {
      color: #C4C4C4;
      margin-left: 10px;
      font-size: 16px;
      cursor: pointer;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.marked .pdf-field-edit-btn,
    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.marked .pdf-field-edit-ok-btn {
      visibility: hidden;
    }


    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field .approve-reject-buttons,
    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.expanded.marked .approve-reject-buttons {
        display: flex;
        flex-basis: 300px;
        height: 0;
        margin-top: 0;
        transition: height 300ms, margin-top 300ms;
        overflow: hidden;
        visibility: hidden;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.expanded .approve-reject-buttons {
        position: absolute;
        width: 100%;
        top: 100%;
        height: 60px;
        z-index: 10;
        opacity: .9;
        transition: height 300ms, margin-top 300ms;
        visibility: hidden;
    }
    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.expanded:hover .approve-reject-buttons {
        visibility: visible;
    }
    .fsi-pdf-document .fsi-pdf-check-fields .pdf-field.editing.expanded:hover .approve-reject-buttons {
        visibility: hidden;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .approve-reject-buttons .block-btn {
        flex-grow: 1;
        border: none;
        font-size: 16px;
        color: #FFFFFF;
        height: 60px;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .approve-reject-buttons .block-btn.reject-btn {
        background: #be0100;
    }

    .fsi-pdf-document .fsi-pdf-check-fields .approve-reject-buttons .block-btn.approve-btn {
        background: #00ab89;
    }

    .fsi-pdf-document .fsi-pdf-approve-reject .approve-form,
    .fsi-pdf-document .fsi-pdf-approve-reject .reject-form {
        display: none;
        margin-top: 15px;
    }

    .fsi-pdf-document .fsi-pdf-approve-reject .reject-form-notes {
        background: #FFFFFF;
    }

    .fsi-pdf-document .fsi-pdf-approve-reject .reject-form-notes .notes-title {
        padding: 15px 10px;
        margin: 0;
        border-bottom: 1px solid #C4C4C4;
    }

    .fsi-pdf-document .fsi-pdf-approve-reject .reject-form-notes .notes-textarea {
        padding: 15px 10px;
    }

    .fsi-pdf-document .fsi-pdf-approve-reject .reject-form-notes .notes-textarea textarea {
        width: 100% !important;
        height: 100% !important;
    }

    .fsi-pdf-document .fsi-pdf-approve-reject .big-button {
        margin: 15px 0;
        border: none;
        outline: 0;
        color: #FFFFFF;
        background: BLACK;
        width: 100%;
        height: 30px;
    }

    .fsi-pdf-document .fsi-pdf-approve-reject .big-button.approve-btn {
        background: #00ab89;
    }

    .fsi-pdf-document .fsi-pdf-approve-reject .big-button.reject-btn {
        background: #be0100;
    }


    .fsi-pdf-document .box-toolbar-pdf-thumbnail {
        text-align: center;
        max-width: 150px;
        overflow-y: scroll;
        padding-right: 30px;
    }

    .fsi-pdf-document .box-toolbar-pdf-tools select {
        background: #FFFFFF none;
        border: 1px solid #e5e6e7;
        width: auto;
        border-radius: 1px;
        color: inherit;
        padding: 5px 12px;
        transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
    }

</style>

<div class="fsi-pdf-document">
    <div class="pdf-wrapper">
        <div class="pdf-stuff">
            <iframe id="pdf-viewer" style="width: 100%; height: 100%;" allowfullscreen=""
                    webkitallowfullscreen=""></iframe>
        </div>
        <div class="form-stuff ">

            <!-- ------------------------------------ PDF check -------------------------------------------- -->
            <div id="fsi-pdf-check">

                <div class="fsi-pdf-check-fields">
                    <!-- WILL BE POPULATED WITH FIELDS -->
                </div>

                <div class="fsi-pdf-approve-reject">
                    <div class="approve-form">
                        <button class="big-button approve-btn">APPROVE</button>
                    </div>
                    <div class="reject-form">
                        <div class="reject-form-notes">
                            <h4 class="notes-title">Notes</h4>
                            <div class="notes-textarea">
                                <textarea></textarea>
                            </div>
                        </div>
                        <button class="big-button reject-btn">REJECT</button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

<script type="text/template" id="pdf-field-template">
    <div class="pdf-field expanded">
        <div class="pdf-field-row">
            <div class="pdf-field-labels">
                <div class="pdf-field-name">Verify company name</div>
                <div class="pdf-field-value">-</div><i class="fa fa-pencil pdf-field-edit-btn"/>
            </div>
            <div class="pdf-field-tools">
                <i class="expand-btn fa fa-chevron-up"></i>
                <i class="clear-btn fa fa-times"></i>
            </div>
        </div>
        <div class="approve-reject-buttons">
            <button class="block-btn approve-btn"><i class="fa fa-check"></i></button>
            <button class="block-btn reject-btn"><i class="fa fa-times"></i></button>
        </div>
    </div>
</script>


<script>

    $(function () {



        function updateApproveRejectForm() {
            var nFields = $('.pdf-field').length,
                nApproved = $('.pdf-field.approved').length,
                nRejected = $('.pdf-field.rejected').length;

            if (nRejected > 0) {
                $('.approve-form').hide();
                $('.reject-form').show();
            } else if (nFields === nApproved) {
                $('.reject-form').hide();
                $('.approve-form').show();
            } else {
                $('.reject-form').hide();
                $('.approve-form').hide();
            }
        }

        function toggleFieldExpand(fieldElem, forceExpand) {
            var mustExpand = (forceExpand === true)
              ? true
              : (forceExpand === false)
                ? false
                : !$(fieldElem).hasClass('expanded');
            var expandBtn = $(fieldElem).find('.expand-btn');
            expandBtn.removeClass('fa-chevron-up fa-chevron-down');
            if (mustExpand) {
              $(fieldElem).addClass('expanded');
              expandBtn.addClass('fa-chevron-up');
            } else {
              $(fieldElem).removeClass('expanded');
              expandBtn.addClass('fa-chevron-down');
            }
        }


        function bindFieldButtons() {

            // binding expanding fields
            $('.pdf-field .expand-btn').click(function () {
                var field = $(this).closest('.pdf-field');
                toggleFieldExpand(field);
            });

            // binding clear field buttons
            $('.pdf-field .clear-btn').click(function () {
                var field = $(this).closest('.pdf-field');
                toggleFieldExpand(field, true);
                field.removeClass('marked approved rejected');
                updateApproveRejectForm();
            });

            // binding edit field buttons
            $('.pdf-field .pdf-field-edit-btn').click(function () {
                var editBtn = $(this),
                  field = editBtn.closest('.pdf-field'),
                  fieldValueDiv = field.find('.pdf-field-value'),
                  fieldValue = fieldValueDiv.text();
                field.addClass('editing');
                editBtn.hide();
                fieldValueDiv.html('<input value="' + fieldValue + '"/><i class="fa fa-check pdf-field-edit-ok-btn" />');
                field.find('.pdf-field-edit-ok-btn').click(function() {
                  fieldValueDiv.text(field.find('input').val());
                  field.find('input, .pdf-field-edit-ok-btn').remove();
                  editBtn.show();
                  field.removeClass('editing');
                });
            });

            // binding approve buttons
            $('.pdf-field .approve-btn').click(function () {
                var field = $(this).closest('.pdf-field');
                toggleFieldExpand(field);
                field.addClass('marked approved');
                updateApproveRejectForm();
            });

            // binding reject buttons
            $('.pdf-field .reject-btn').click(function () {
                var field = $(this).closest('.pdf-field');
                toggleFieldExpand(field);
                field.addClass('marked rejected');
                updateApproveRejectForm();
            });

            <wp:ifauthorized groupName="knowledge_worker">
            var dashboardUrl = '<wp:url page="account_executive_dashboard" />';
            </wp:ifauthorized>
            <wp:ifauthorized groupName="legal_worker">
            var dashboardUrl = '<wp:url page="legal_dashboard" />';
            </wp:ifauthorized>
            // binding global approve button
            $('.fsi-pdf-approve-reject .approve-btn').click(function () {
                window.location = dashboardUrl + '#flashToast=success|Document approved.';
            });
            // binding global reject button
            $('.fsi-pdf-approve-reject .reject-btn').click(function () {
              var rejectMsg = $('.fsi-pdf-approve-reject textarea').val(),
                toastMsg = rejectMsg
                  ? 'Document rejected with message: ' + rejectMsg
                  : 'Document rejected.';
              window.location = dashboardUrl + '#flashToast=error|' + toastMsg;
            });
        }




        function getQueryVariable(variable) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i = 0; i < vars.length; i++) {
                var pair = vars[i].split("=");
                if (pair[0] == variable) {
                    return pair[1];
                }
            }
            return (false);
        };

        var loadUserInfo = function (configId, processInstanceId) {
            var url = '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/processInstanceListPlus.json?configId='+configId+'&processInstanceId='+processInstanceId;
            $.get(url, function (data) {
                var obj = data.response.result.processInstanceList.list;

                obj['dateofbirth'] = new Date(obj['dateofbirth']).toLocaleString();

                var keys = Object.keys(obj);

                var nameMap = {
                    company: 'Company',
                    email:'Email',
                    dateofbirth:'Date of Birth',
                    bic:'BIC',
                    partyName:'Customer Name',
                    ssn: 'SSN',
                    type: 'Type'
                };
                var fields = keys
                    .filter(function(key){
                        return ['company','email','dateofbirth','bic','partyName','ssn','type'].indexOf(key) !== -1;
                    })
                    .map(function(key){
                        return {
                            name: nameMap[key],
                            value: obj[key]
                        }
                    });


                var fieldListElem = $('.fsi-pdf-check-fields');
                fields.forEach(function (field) {
                    var fieldElem = $($('#pdf-field-template').html());
                    fieldElem.find('.pdf-field-name').text(field.name);
                    fieldElem.find('.pdf-field-value').text(field.value);
                    fieldListElem.append(fieldElem);
                });
                bindFieldButtons();
            });

        };
        var configId = getQueryVariable('configId');
        var processInstanceId = getQueryVariable('processInstanceId');
        loadUserInfo(configId, processInstanceId);

    });
</script>
