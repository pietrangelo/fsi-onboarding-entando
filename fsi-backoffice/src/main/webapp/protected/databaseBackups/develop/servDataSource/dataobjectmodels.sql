INSERT INTO dataobjectmodels (modelid,datatype,descr,model,stylesheet) VALUES (1,'AAA','Model for 5fdf1ed1672f5358e70570bd7f50b163','<div class="ibox ibox-padding">
    <div class="ibox-title">

    </div>
    <div class="ibox-content">
        <div id="dialog-response-process" title="Response"></div>
        <form id="bpm-form" method="post" novalidate="novalidate" class="ui-dform-form" action="$info.getActionPathUrl(''/ExtStr2/do/bpm/FrontEnd/DataTypeForm/save'')">
            <input type="hidden" id="processId" name="processId" class="ui-dform-hidden" value="commercial-client-onboarding.ClientOnboardingProcess">
            <input type="hidden" id="containerId" name="containerId" class="ui-dform-hidden" value="5fdf1ed1672f5358e70570bd7f50b163">
            <div class="ui-dform-div">
                <fieldset class="ui-dform-fieldset">

                    <legend class="control-label editLabel ui-dform-legend" id="JPKIE_FORM_commercial-client-onboarding">$i18n.getLabel("JPKIE_FORM_commercial-client-onboarding")</legend>

                    <div class="ui-dform-div form-group">
                        <label id="JPKIE_party_name" for="jpkieformparam_party_name" class="editLabel">$i18n.getLabel("JPKIE_party_name")</label>
                        <input type="text" id="jpkieformparam_party_name" name="$data.party_name.type:party_name" labelkey="JPKIE_party_name" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.party_name.text" >
                    </div>

                    <div class="ui-dform-div form-group">
                        <label id="JPKIE_party_surname" for="jpkieformparam_party_surname" class="editLabel">$i18n.getLabel("JPKIE_party_surname")</label>
                        <input type="text" id="jpkieformparam_party_surname" name="$data.party_surname.type:party_surname" labelkey="JPKIE_party_surname" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.party_surname.text" >
                    </div>

                    <div class="ui-dform-div form-group">
                        <label id="JPKIE_client_email" for="jpkieformparam_client_email" class="editLabel">$i18n.getLabel("JPKIE_client_email")</label>
                        <input type="email" id="jpkieformparam_client_email" name="$data.client_email.type:client_email" labelkey="JPKIE_client_email" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_email.text" >
                    </div>

                    <input type="hidden" id="jpkieformparam_accountManager" name="$data.accountManager.type:accountManager" labelkey="JPKIE_accountManager" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.accountManager.text" >

                    <div class="ui-dform-div form-group">
                        <label id="JPKIE_client_phoneNumber" for="jpkieformparam_client_phoneNumber" class="editLabel">$i18n.getLabel("JPKIE_client_phoneNumber")</label>
                        <input type="text" id="jpkieformparam_client_phoneNumber" name="$data.client_phoneNumber.type:client_phoneNumber" labelkey="JPKIE_client_phoneNumber" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_phoneNumber.text" >
                    </div>

                    <hr>
                    <legend class="control-label editLabel ui-dform-legend" id="JPKIE_FORM_commercial-business-information">$i18n.getLabel("JPKIE_FORM_commercial-business-information")</legend>

                    <div class="ui-dform-div form-group">
                        <label id="JPKIE_client_address" for="jpkieformparam_client_address" class="editLabel">$i18n.getLabel("JPKIE_client_address")</label>
                        <input type="text" id="jpkieformparam_client_address" name="$data.client_address.type:client_address" labelkey="JPKIE_client_address" class="form-control ui-widget ui-dform-number" aria-required="true" value="" >
                    </div>

                    <div class="ui-dform-div form-group">
                        <label id="JPKIE_client_name" for="jpkieformparam_client_name" class="editLabel">$i18n.getLabel("JPKIE_client_name")</label>
                        <input type="text" id="jpkieformparam_client_name" name="$data.client_name.type:client_name" labelkey="JPKIE_client_name" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_name.text" >
                    </div>

                    <div class="ui-dform-div form-group">
                        <label id="JPKIE_client_country" for="jpkieformparam_client_country" class="editLabel">$i18n.getLabel("JPKIE_client_country")</label>
                        <input type="text" id="jpkieformparam_client_country" name="$data.client_country.type:client_country" labelkey="JPKIE_client_country" class="form-control ui-widget ui-dform-number" aria-required="true" value="$data.client_country.text" >
                    </div>

                    <hr>
                    <legend class="control-label editLabel ui-dform-legend" id="JPKIE_FORM_financial-services">$i18n.getLabel("JPKIE_FORM_financial-services")</legend>

                    <br/>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="ui-dform-div form-group">
                                <input class="i-checks" type="checkbox" name="ckb-business-checking">
                                <label id="JPKIE_FORM_FIN_business-checking"
                                        class="editLabel ckb-label"
                                        for="ckb-business-checking">
                                    $i18n.getLabel("JPKIE_FORM_FIN_business-checking")
                                </label>
                            </div>
                            <div class="ui-dform-div form-group">
                                <input class="i-checks" type="checkbox" name="ckb-business-leading-and-financing">
                                <label id="JPKIE_FORM_FIN_business-leading-and-financing"
                                        class="editLabel ckb-label"
                                        for="ckb-business-leading-and-financing">
                                    $i18n.getLabel("JPKIE_FORM_FIN_business-leading-and-financing")
                                </label>
                            </div>
                            <div class="ui-dform-div form-group">
                                <input class="i-checks" type="checkbox" name="ckb-merchant-services">
                                <label id="JPKIE_FORM_FIN_merchant-services"
                                        class="editLabel ckb-label"
                                        for="ckb-merchant-services">
                                    $i18n.getLabel("JPKIE_FORM_FIN_merchant-services")
                                </label>
                            </div>
                            <div class="ui-dform-div form-group">
                                <input class="i-checks" type="checkbox" name="ckb-cash-management-services">
                                <label id="JPKIE_FORM_FIN_cash-management-services"
                                        class="editLabel ckb-label"
                                        for="ckb-cash-management-services">
                                    $i18n.getLabel("JPKIE_FORM_FIN_cash-management-services")
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="ui-dform-div form-group">
                                <input class="i-checks" type="checkbox" name="ckb-business-credit-cards">
                                <label id="JPKIE_FORM_FIN_business-credit-cards"
                                        class="editLabel ckb-label"
                                        for="ckb-business-credit-cards">
                                    $i18n.getLabel("JPKIE_FORM_FIN_business-credit-cards")
                                </label>
                            </div>
                            <div class="ui-dform-div form-group">
                                <input class="i-checks" type="checkbox" name="ckb-international-banking">
                                <label id="JPKIE_FORM_FIN_international-banking"
                                        class="editLabel ckb-label"
                                        for="ckb-international-banking">
                                    $i18n.getLabel("JPKIE_FORM_FIN_international-banking")
                                </label>
                            </div>
                            <div class="ui-dform-div form-group">
                                <input class="i-checks" type="checkbox" name="ckb-treasury-services">
                                <label id="JPKIE_FORM_FIN_treasury-services"
                                        class="editLabel ckb-label"
                                        for="ckb-treasury-services">
                                    $i18n.getLabel("JPKIE_FORM_FIN_treasury-services")
                                </label>
                            </div>
                            <div class="ui-dform-div form-group">
                                <input class="i-checks" type="checkbox" name="ckb-employee-benefit-services">
                                <label id="JPKIE_FORM_FIN_employee-benefit-services"
                                        class="editLabel ckb-label"
                                        for="ckb-employee-benefit-services">
                                    $i18n.getLabel("JPKIE_FORM_FIN_employee-benefit-services")
                                </label>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
           <hr>
           <div class="ui-dform-div btn-override ">
                <input type="submit" name="submit-bpm-form" class="ui-dform-submit btn btn-primary" value="submit">
            </div>
        </form>
    </div>
</div>
<script>

    var valueMap = {
        jpkieformparam_client_address: ''Raleigh, NC 27601'',
        jpkieformparam_client_name: ''Interstellar Inc.'',
        jpkieformparam_client_country: ''USA'',
        jpkieformparam_client_phoneNumber: ''+23070453273'',
        jpkieformparam_party_name: ''John'',
        jpkieformparam_party_surname: ''William'',
        jpkieformparam_accountManager: ''admin''

    }

    for (var key in valueMap) {
        if (!document.getElementById(key).value) {
            document.getElementById(key).value = valueMap[key];
        }
    }


</script>
',NULL);
