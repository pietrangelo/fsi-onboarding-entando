INSERT INTO dataobjectmodels (modelid,datatype,descr,model,stylesheet) VALUES (1,'AAA','Model for 5fdf1ed1672f5358e70570bd7f50b163','<div class="ibox ibox-padding">
    <div class="ibox-title">
		<!-- <h3 class="control-label editLabel" id="MORTGAGE_REQUEST_PROCESS">Mortgage Process</h3> -->
        <h3 class="control-label editLabel" id="JPKIE_TITLE_ClientOnboardingProcess">$i18n.getLabel("JPKIE_TITLE_ClientOnboardingProcess")</h3>
    </div>
    <div class="ibox-content">
        <div id="dialog-response-process" title="Response"></div>
        <form id="bpm-form" method="post" novalidate="novalidate" class="ui-dform-form" action="$info.getActionPathUrl(''/ExtStr2/do/bpm/FrontEnd/DataTypeForm/save'')">
			<input type="hidden" id="processId" name="processId" class="ui-dform-hidden" value="commercial-client-onboarding.ClientOnboardingProcess">
			<input type="hidden" id="containerId" name="containerId" class="ui-dform-hidden" value="5fdf1ed1672f5358e70570bd7f50b163">
<div class="ui-dform-div">
	<fieldset class="ui-dform-fieldset"><legend class="control-label editLabel ui-dform-legend">$i18n.getLabel("JPKIE_FORM_commercial-client-onboarding")</legend>
<div class="ui-dform-div form-group">
	<label id="JPKIE_accountName" for="jpkieformparam_accountName" class="editLabel">$i18n.getLabel("JPKIE_accountName")</label>
	<input type="text" id="jpkieformparam_accountName" name="$data.accountName.type:accountName" labelkey="JPKIE_accountName" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.accountName.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_creditScore" for="jpkieformparam_client_creditScore" class="editLabel">$i18n.getLabel("JPKIE_client_creditScore")</label>
	<input type="number" id="jpkieformparam_client_creditScore" name="$data.client_creditScore.type:client_creditScore" labelkey="JPKIE_client_creditScore" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_creditScore.number" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_type" for="jpkieformparam_client_type" class="editLabel">$i18n.getLabel("JPKIE_client_type")</label>
	<input type="text" id="jpkieformparam_client_type" name="$data.client_type.type:client_type" labelkey="JPKIE_client_type" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_type.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_address" for="jpkieformparam_client_address" class="editLabel">$i18n.getLabel("JPKIE_client_address")</label>
	<input type="null" id="jpkieformparam_client_address" name="$data.client_address.type:client_address" labelkey="JPKIE_client_address" class="form-control ui-widget ui-dform-number" aria-required="true" value="" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_name" for="jpkieformparam_client_name" class="editLabel">$i18n.getLabel("JPKIE_client_name")</label>
	<input type="text" id="jpkieformparam_client_name" name="$data.client_name.type:client_name" labelkey="JPKIE_client_name" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_name.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_country" for="jpkieformparam_client_country" class="editLabel">$i18n.getLabel("JPKIE_client_country")</label>
	<input type="text" id="jpkieformparam_client_country" name="$data.client_country.type:client_country" labelkey="JPKIE_client_country" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_country.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_relatedParties" for="jpkieformparam_client_relatedParties" class="editLabel">$i18n.getLabel("JPKIE_client_relatedParties")</label>
	<input type="null" id="jpkieformparam_client_relatedParties" name="$data.client_relatedParties.type:client_relatedParties" labelkey="JPKIE_client_relatedParties" class="form-control ui-widget ui-dform-number" aria-required="true" value="" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_accountManager" for="jpkieformparam_accountManager" class="editLabel">$i18n.getLabel("JPKIE_accountManager")</label>
	<input type="text" id="jpkieformparam_accountManager" name="$data.accountManager.type:accountManager" labelkey="JPKIE_accountManager" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.accountManager.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_phoneNumber" for="jpkieformparam_client_phoneNumber" class="editLabel">$i18n.getLabel("JPKIE_client_phoneNumber")</label>
	<input type="text" id="jpkieformparam_client_phoneNumber" name="$data.client_phoneNumber.type:client_phoneNumber" labelkey="JPKIE_client_phoneNumber" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_phoneNumber.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_documents_documents" for="jpkieformparam_documents_documents" class="editLabel">$i18n.getLabel("JPKIE_documents_documents")</label>
	<input type="null" id="jpkieformparam_documents_documents" name="$data.documents_documents.type:documents_documents" labelkey="JPKIE_documents_documents" class="form-control ui-widget ui-dform-number" aria-required="true" value="" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_bic" for="jpkieformparam_client_bic" class="editLabel">$i18n.getLabel("JPKIE_client_bic")</label>
	<input type="text" id="jpkieformparam_client_bic" name="$data.client_bic.type:client_bic" labelkey="JPKIE_client_bic" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_bic.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_id" for="jpkieformparam_client_id" class="editLabel">$i18n.getLabel("JPKIE_client_id")</label>
	<input type="null" id="jpkieformparam_client_id" name="$data.client_id.type:client_id" labelkey="JPKIE_client_id" class="form-control ui-widget ui-dform-number" aria-required="true" value="" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_client_email" for="jpkieformparam_client_email" class="editLabel">$i18n.getLabel("JPKIE_client_email")</label>
	<input type="text" id="jpkieformparam_client_email" name="$data.client_email.type:client_email" labelkey="JPKIE_client_email" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_email.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_party_name" for="jpkieformparam_party_name" class="editLabel">$i18n.getLabel("JPKIE_party_name")</label>
	<input type="text" id="jpkieformparam_party_name" name="$data.party_name.type:party_name" labelkey="JPKIE_party_name" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.party_name.text" >
</div>
<div class="ui-dform-div form-group">
	<label id="JPKIE_party_surname" for="jpkieformparam_party_surname" class="editLabel">$i18n.getLabel("JPKIE_party_surname")</label>
	<input type="text" id="jpkieformparam_party_surname" name="$data.party_surname.type:party_surname" labelkey="JPKIE_party_surname" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.party_surname.text" >
</div>
	</fieldset>
</div>
<div class="ui-dform-div">
	<input type="submit" name="submit-bpm-form" class="ui-dform-submit btn btn-primary" value="submit">
</div>
		</form>
    </div>
</div>
',NULL);
