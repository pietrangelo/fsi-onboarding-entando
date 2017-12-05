<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<s:if test="hasActionMessages()">
<script>

  $(function() {
    // get the bpm messages from the iterator
    var bpmMsg = '';
    <s:iterator value="actionMessages">
    bpmMsg += '<s:property/><br/>';
    </s:iterator>

    // show the toast
    toastr.success(bpmMsg, 'Success', {
      progressBar: true
    });
  });

</script>

<div class="row">
  <div class="col-md-12">
    <div class="ibox float-e-margins">
      <div class="ibox-content text-center p-md" style="padding:25px">
        <a href="<wp:info key="systemParam" paramName="applicationBaseURL" /><wp:info key="currentLang"/>/form_mobile.page">
          <button class="btn btn-success btn-lg">Fill another form</button>
        </a>
        <a href="<wp:info key="systemParam" paramName="applicationBaseURL" /><wp:info key="currentLang"/>/account_executive_dashboard.page">
          <button class="btn btn-success btn-lg">Go to dashboard</button>
        </a>
      </div>
    </div>
  </div>
</div>

</s:if>
<s:else>
  <s:property value="renderedForm" />
</s:else>
