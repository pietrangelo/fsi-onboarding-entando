INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpapplicantApplicant', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Publish Applicant</property>
<property key="it">Pubblica Applicant</property>
</properties>', '<config>
	<parameter name="id">id</parameter>
	<action name="jpapplicantApplicantConfig"/>
</config>','jpapplicant', NULL, NULL, 1, 'free');

INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpapplicantApplicant_list_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Applicant List and Form</property>
<property key="it">Lista e Form Applicant</property>
</properties>', NULL, 'jpapplicant', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/FrontEnd/jpapplicant/Applicant/list.action</property>
</properties>', 1, 'free');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_ID', 'en', 'id');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_ID', 'it', 'id');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_FIRSTNAME', 'en', 'firstname');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_FIRSTNAME', 'it', 'firstname');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_LASTNAME', 'en', 'lastname');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_LASTNAME', 'it', 'lastname');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_COMPANY', 'en', 'company');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_COMPANY', 'it', 'company');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_EMAIL', 'en', 'email');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_EMAIL', 'it', 'email');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_USERNAME', 'en', 'username');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_USERNAME', 'it', 'username');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_PWD', 'en', 'pwd');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_PWD', 'it', 'pwd');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_CNFPWD', 'en', 'confirm pwd');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_CNFPWD', 'it', 'conferma pwd');


INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_ACTIONS', 'it', 'Actions');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_ACTIONS', 'en', 'Actions');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_NEW', 'it', 'Applicant New');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_NEW', 'en', 'Applicant New');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_EDIT', 'it', 'Applicant Edit');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_EDIT', 'en', 'Applicant Edit');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_TRASH', 'it', 'Applicant Trash');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_TRASH', 'en', 'Applicant Trash');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_TRASH_CONFIRM', 'it', 'Applicant Trash confirm');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_TRASH_CONFIRM', 'en', 'Applicant Trash confirm');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_SEARCH_APPLICANT', 'it', 'Applicant search');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_SEARCH_APPLICANT', 'en', 'Applicant search');

INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_NOT_FOUND', 'it', 'Applicant not found');
INSERT INTO localstrings ( keycode, langcode, stringvalue ) VALUES ('jpapplicant_APPLICANT_NOT_FOUND', 'en', 'Applicant not found');


INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jpapplicant_is_front_Applicant_entry', 'jpapplicantApplicant_list_form', 'jpapplicant', NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wp.info key="currentLang" var="currentLangVar" />

<#assign js_for_datepicker="jQuery(function($){
$.datepicker.regional[''it''] = {
closeText: ''Chiudi'',
prevText: ''&#x3c;Prec'',
nextText: ''Succ&#x3e;'',
currentText: ''Oggi'',
monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
monthNamesShort:  [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
weekHeader: ''Sm'',
dateFormat: ''dd/mm/yy'',
firstDay: 1,
isRTL: false,
showMonthAfterYear: false,
yearSuffix: ''''};
});

jQuery(function($) {
 if (Modernizr.touch && Modernizr.inputtypes.date) {
  $.each( $(\"input[data-isdate=true]\"), function(index, item) {
   item.type = ''date'';
  });
 } else {
  $.datepicker.setDefaults( $.datepicker.regional[ \"${currentLangVar}\" ] );
  $(\"input[data-isdate=true]\").datepicker({
	changeMonth: true,
	changeYear: true,
	dateFormat: \"dd/mm/yy\"
   });
 }
});
">
<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.1/jquery-ui.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />
<section>
<@s.if test="strutsAction==1">
	<h1><@wp.i18n key="jpapplicant_APPLICANT_NEW" /></h1>
</@s.if>
<@s.elseif test="strutsAction==2">
	<h1><@wp.i18n key="jpapplicant_APPLICANT_EDIT" /></h1>
</@s.elseif>
<form action="<@wp.action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/save.action" />" method="post">
	<@s.if test="hasFieldErrors()">
		<div class="alert alert-error">
			<h2><@s.text name="message.title.FieldErrors" /></h2>
			<ul>
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
				<li><@s.property/></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<@s.if test="hasActionErrors()">
		<div class="alert alert-error">
			<h2><@s.text name="message.title.ActionErrors" /></h2>
			<ul>
				<@s.iterator value="actionErrors">
				<li><@s.property/></li>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<p class="sr-only">
		<@wpsf.hidden name="strutsAction" />
		<@wpsf.hidden name="id" />
	</p>
	<fieldset>
		<label for="applicant_firstname"><@wp.i18n key="jpapplicant_APPLICANT_FIRSTNAME" /></label>
		<input type="text" name="firstname" id="applicant_firstname" value="<@s.property value="firstname" />" />
		<label for="applicant_lastname"><@wp.i18n key="jpapplicant_APPLICANT_LASTNAME" /></label>
		<input type="text" name="lastname" id="applicant_lastname" value="<@s.property value="lastname" />" />
		<label for="applicant_company"><@wp.i18n key="jpapplicant_APPLICANT_COMPANY" /></label>
		<input type="text" name="company" id="applicant_company" value="<@s.property value="company" />" />
		<label for="applicant_email"><@wp.i18n key="jpapplicant_APPLICANT_EMAIL" /></label>
		<input type="text" name="email" id="applicant_email" value="<@s.property value="email" />" />
		<label for="applicant_pwd"><@wp.i18n key="jpapplicant_APPLICANT_PWD" /></label>
		<input type="text" name="pwd" id="applicant_pwd" value="<@s.property value="pwd" />" />
	</fieldset>
	<@wpsf.submit type="button" cssClass="btn btn-primary">
		<@wp.i18n key="SAVE" />
	</@wpsf.submit>
</form>
</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jpapplicant_is_front_Applicant_error', 'jpapplicantApplicant_list_form', 'jpapplicant', NULL, '<pre>
   __   _ __   _ __   ___   _ __
 /''__`\/\`''__\/\`''__\/ __`\/\`''__\
/\  __/\ \ \/ \ \ \//\ \L\ \ \ \/
\ \____\\ \_\  \ \_\\ \____/\ \_\
 \/____/ \/_/   \/_/ \/___/  \/_/

</pre>', 1);




INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jpapplicant_is_front_Applicant_list', 'jpapplicantApplicant_list_form', 'jpapplicant', NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>

<@wp.info key="currentLang" var="currentLangVar" />

<#assign js_for_datepicker="jQuery(function($){
$.datepicker.regional[''it''] = {
closeText: ''Chiudi'',
prevText: ''&#x3c;Prec'',
nextText: ''Succ&#x3e;'',
currentText: ''Oggi'',
monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
monthNamesShort:  [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
weekHeader: ''Sm'',
dateFormat: ''dd/mm/yy'',
firstDay: 1,
isRTL: false,
showMonthAfterYear: false,
yearSuffix: ''''};
});

jQuery(function($) {
 if (Modernizr.touch && Modernizr.inputtypes.date) {
  $.each( $(\"input[data-isdate=true]\"), function(index, item) {
   item.type = ''date'';
  });
 } else {
  $.datepicker.setDefaults( $.datepicker.regional[ \"${currentLangVar}\" ] );
  $(\"input[data-isdate=true]\").datepicker({
	changeMonth: true,
	changeYear: true,
	dateFormat: \"dd/mm/yy\"
   });
 }
});
">
<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.1/jquery-ui.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />

<section class="applicant_list">

<h1><@wp.i18n key="jpapplicant_APPLICANT_SEARCH_APPLICANT" /></h1>

<form action="<@wp.action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/search.action" />" method="post" >

  <fieldset>
		<label for="applicant_id"><@wp.i18n key="jpapplicant_APPLICANT_ID" /></label>
		<input type="text" name="id" id="applicant_id" value="<@s.property value="id" />" />
		<label for="applicant_firstname"><@wp.i18n key="jpapplicant_APPLICANT_FIRSTNAME" /></label>
		<input type="text" name="firstname" id="applicant_firstname" value="<@s.property value="firstname" />" />
		<label for="applicant_lastname"><@wp.i18n key="jpapplicant_APPLICANT_LASTNAME" /></label>
		<input type="text" name="lastname" id="applicant_lastname" value="<@s.property value="lastname" />" />
		<label for="applicant_company"><@wp.i18n key="jpapplicant_APPLICANT_COMPANY" /></label>
		<input type="text" name="company" id="applicant_company" value="<@s.property value="company" />" />
		<label for="applicant_email"><@wp.i18n key="jpapplicant_APPLICANT_EMAIL" /></label>
		<input type="text" name="email" id="applicant_email" value="<@s.property value="email" />" />
		<label for="applicant_pwd"><@wp.i18n key="jpapplicant_APPLICANT_PWD" /></label>
		<input type="text" name="pwd" id="applicant_pwd" value="<@s.property value="pwd" />" />
  </fieldset>

  <button type="submit" class="btn btn-primary">
    <@wp.i18n key="SEARCH" />
  </button>

<@wpsa.subset source="applicantsId" count=10 objectName="groupApplicant" advanced=true offset=5>
<@s.set name="group" value="#groupApplicant" />
<@wp.freemarkerTemplateParameter var="group" valueName="groupApplicant" removeOnEndTag=true >
<div class="margin-medium-vertical text-center">
	<@s.include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
	<@s.include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
	<#--
	<@wp.fragment code="default_pagerInfo_is" escapeXml=false />
	<@wp.fragment code="default_pagerFormBlock_is" escapeXml=false />
	-->
</div>
<p>
  <a href="<@wp.action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/new.action"></@wp.action>" title="<@wp.i18n key="NEW" />" class="btn btn-info">
    <span class="icon-plus-sign icon-white"></span>&#32;
    <@wp.i18n key="NEW" />
  </a>
</p>
<table class="table table-bordered table-condensed table-striped">
<thead>
<tr>
  <th class="text-right">
    <@wp.i18n key="jpapplicant_APPLICANT_ID" />
  </th>
	<th
                 class="text-left"><@wp.i18n key="jpapplicant_APPLICANT_FIRSTNAME" /></th>
	<th
                 class="text-left"><@wp.i18n key="jpapplicant_APPLICANT_LASTNAME" /></th>
	<th
                 class="text-left"><@wp.i18n key="jpapplicant_APPLICANT_COMPANY" /></th>
	<th
                 class="text-left"><@wp.i18n key="jpapplicant_APPLICANT_EMAIL" /></th>
	<th
                 class="text-left"><@wp.i18n key="jpapplicant_APPLICANT_PWD" /></th>
	<th>
    <@wp.i18n key="jpapplicant_APPLICANT_ACTIONS" />
  </th>
</tr>
</thead>
<tbody>
<@s.iterator var="applicantId">
<tr>
	<@s.set var="applicant" value="%{getApplicant(#applicantId)}" />
	<td class="text-right">
    <a
      href="<@wp.action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/edit.action"><@wp.parameter name="id"><@s.property value="#applicant.id" /></@wp.parameter></@wp.action>"
      title="<@wp.i18n key="EDIT" />: <@s.property value="#applicant.id" />"
      class="label label-info display-block">
    <@s.property value="#applicant.id" />&#32;
    <span class="icon-edit icon-white"></span>
    </a>
  </td>
	<td
            >
    <@s.property value="#applicant.firstname" />  </td>
	<td
            >
    <@s.property value="#applicant.lastname" />  </td>
	<td
            >
    <@s.property value="#applicant.company" />  </td>
	<td
            >
    <@s.property value="#applicant.email" />  </td>
	<td
            >
    <@s.property value="#applicant.pwd" />  </td>
	<td class="text-center">
    <a
      href="<@wp.action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/trash.action"><@wp.parameter name="id"><@s.property value="#applicant.id" /></@wp.parameter></@wp.action>"
      title="<@wp.i18n key="TRASH" />: <@s.property value="#applicant.id" />"
      class="btn btn-warning btn-small">
      <span class="icon-trash icon-white"></span>&#32;
      <@wp.i18n key="TRASH" />
    </a>
  </td>
</tr>
</@s.iterator>
</tbody>
</table>
<div class="margin-medium-vertical text-center">
	<@s.include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
	<#--
	<@wp.fragment code="default_pagerFormBlock_is" escapeXml=false />
	-->
</div>
</@wp.freemarkerTemplateParameter>
</@wpsa.subset>
</form>
</section>', 1);

INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jpapplicant_is_front_Applicant_trash', 'jpapplicantApplicant_list_form', 'jpapplicant', NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<section>
	<h1><wp:i18n key="jpapplicant_APPLICANT_TRASH" /></h1>
	<form action="<@wp.action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/delete.action" />" method="post">
		<@s.if test="hasFieldErrors()">
			<div class="alert alert-error">
				<h2><@s.text name="message.title.FieldErrors" /></h2>
				<ul>
					<@s.iterator value="fieldErrors">
						<@s.iterator value="value">
						<li><@s.property /></li>
						</@s.iterator>
					</@s.iterator>
				</ul>
			</div>
		</@s.if>
		<@s.if test="hasActionErrors()">
			<div class="alert alert-error">
				<h2><@s.text name="message.title.ActionErrors" /></h2>
				<ul>
					<@s.iterator value="actionErrors">
					<li><@s.property /></li>
					</@s.iterator>
				</ul>
			</div>
		</@s.if>
		<p class="sr-only">
			<@wpsf.hidden name="strutsAction" />
			<@wpsf.hidden name="id" />
		</p>
		<div class="alert alert-warning">
			<p>
				<@wp.i18n key="jpapplicant_APPLICANT_TRASH_CONFIRM" />&#32;<@wp.i18n key="jpapplicant_APPLICANT_ID" />&#32;<@s.property value="id" />?
			</p>
			<p>
				<@wpsf.submit type="button" cssClass="btn btn-warning">
					<span class="icon-trash icon-white"></span>&#32;
					<@wp.i18n key="TRASH" />
				</@wpsf.submit>
			</p>
		</div>
	</form>
</section>', 1);

