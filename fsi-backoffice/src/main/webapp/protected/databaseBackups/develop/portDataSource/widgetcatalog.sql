INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-transaction-history','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Transaction history</property><property key="it">FSI Transaction history</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-onboarding-stages','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Onboarding stages</property><property key="it">FSI Onboarding stages</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-chandler-hi-dashboard','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Chandler</property><property key="it">FSI Chandler</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-customer-information','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Customer information</property><property key="it">FSI Customer information</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-customer-verification','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Customer verification</property><property key="it">FSI Customer verification</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-mock-datatable-account','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI mock-datatable-account</property><property key="it">FSI mock-datatable-account</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-mock-datatable-backoffice','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI mock-datatable- backoffice</property><property key="it">FSI mock-datatable- backoffice</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-account-user','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Account user</property><property key="it">FSI Account user</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-Declaration','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Declaration</property><property key="it">FSI Declaration</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-form-banking-services','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI form banking</property><property key="it">FSI form banking</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-legal-check','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI-legal-check</property><property key="it">FSI-legal-check</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-welcome-personal-area','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI welcome personal area</property><property key="it">FSI welcome personal area</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-registration-form-advanced','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI registration advanced</property><property key="it">FSI registrazione avanzata</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-customer-overview','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Customer Overview</property><property key="it">FSI Panoramica Cliente</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('userprofile_editCurrentUser_password','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Password</property>
<property key="it">Edita Password Utente Corrente</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/editPassword.action</property>
</properties>',1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('userprofile_editCurrentUser_profile','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Profile</property>
<property key="it">Edita Profilo Utente Corrente</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/Profile/edit.action</property>
</properties>',1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a Content</property>
<property key="it">Contenuti - Pubblica un Contenuto</property>
</properties>','<config>
	<parameter name="contentId">Content ID</parameter>
	<parameter name="modelId">Content Model ID</parameter>
	<action name="viewerConfig"/>
</config>','jacms',NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('search_result','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search - Search Result</property>
<property key="it">Ricerca - Risultati della Ricerca</property>
</properties>',NULL,'jacms',NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Contents</property>
<property key="it">Contenuti - Pubblica una Lista di Contenuti</property>
</properties>','<config>
	<parameter name="contentType">Content Type (mandatory)</parameter>
	<parameter name="modelId">Content Model</parameter>
	<parameter name="userFilters">Front-End user filter options</parameter>
	<parameter name="category">Content Category **deprecated**</parameter>
	<parameter name="categories">Content Category codes (comma separeted)</parameter>
	<parameter name="orClauseCategoryFilter" />
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="maxElements">Number of contents</parameter>
	<parameter name="filters" />
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="listViewerConfig"/>
</config>','jacms',NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('messages_system','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Messages</property>
<property key="it">Messaggi di Sistema</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('login_form','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Login Form</property>
<property key="it">Form di Login</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Internal Servlet</property>
<property key="it">Invocazione di una Servlet Interna</property>
</properties>','<config>
	<parameter name="actionPath">
		Path to an action or to a JSP. You must prepend ''/ExtStr2'' to any Struts2 action path
	</parameter>
	<action name="configSimpleParameter"/>
</config>',NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando_apis','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">APIs</property>
<property key="it">APIs</property>
</properties>
',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/Api/Resource/list.action</property>
</properties>
',1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('userprofile_editCurrentUser','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User</property>
<property key="it">Edita Utente Corrente</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/edit.action</property>
</properties>',1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('row_content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish Contents</property>
<property key="it">Contenuti - Pubblica Contenuti</property>
</properties>','<config>
	<parameter name="contents">Contents to Publish (mandatory)</parameter>
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="rowListViewerConfig" />
</config>','jacms',NULL,NULL,1,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-language_choose_inspinia','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Choose a Language</property>
<property key="it">Choose a Language</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-search_result_inspinia','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Result</property>
<property key="it">Search Result</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-navigation_bar_inspinia','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Bar</property>
<property key="it">Navigazione - Barra Orizzontale</property>
</properties>','<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>',NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('bpm-datatype-form','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">BPM-Form by DataType</property>
<property key="it">BPM-Form by DataType</property>
</properties>','<config>
	<parameter name="dataTypeCode">Data Type Code</parameter>
	<parameter name="dataUxId">Data Ux ID</parameter>
	<parameter name="widgetInfoId">Widget Info ID</parameter>
	<action name="jpkiebpmBpmFormWidgetViewerConfig"/>
</config>','jpkiebpm',NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('bpm-datatable','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">BPM-Datatable</property>
<property key="it">BPM-Datatable</property>
</properties>','<config>
	<parameter name="widgetInfoId">WidgetInfoID</parameter>
	<action name="jpkiebpmBpmDatatableWidgetViewerConfig"/>
</config>','jpkiebpm',NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-search_form_inspinia','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Form</property>
<property key="it">Search Form</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-footer','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Footer</property><property key="it">FSI Footer</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('banner-main-left ','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Banner content left</property><property key="it">Contenuto banner sinistra</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('Loans-3-images ','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Loans 3 images</property><property key="it">prestiti 3 iimagini</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-apllication-breadcrumb','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Application breadcrumb</property><property key="it">FSI Application breadcrumb</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-club-credit-card','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Credit card banner left</property><property key="it">Banner carta di credito sinistra</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('Welcome-content','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Welcome content</property><property key="it">Welcome content</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES (' Credit-card-banner-right','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Credit card banner right</property><property key="it">Credit card banner right</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('banner-main-internal','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Banner main internal</property><property key="it">Banner principale pagina interna</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('complete-registration-BPM','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Complete registration form BPM</property><property key="it">Form di completamento registrazione BPM</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-customer-rate','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI-customer-rate</property><property key="it">FSI-customer-rate</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('How-to-complete-instructions','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">How to complete instructions</property><property key="it">Registrazione how to</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-application-progress','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI-application-progress</property><property key="it">FSI- progresso applicazione</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-progress-bar','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI progress bar</property><property key="it">FSI progress bar</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-state','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI state</property><property key="it">FSI status</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-performance','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Performance</property><property key="it">FSI Performance</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-backlog','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Backlog</property><property key="it">FSI Backlog</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-average-review-time','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Average Review Time</property><property key="it">FSI Average Review Time</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-in-progress','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI In Progress</property><property key="it">FSI In Progress</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-pdf-document','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Fsi PDF</property><property key="it">Fsi PDF</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('Login-Customer','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Login Customer</property><property key="it">Login Cliente</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-completed','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Completed</property><property key="it">FSI Completed</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('fsi-customer-overview-big','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">FSI Customer Overview Big</property><property key="it">FSI Customer Overview Big</property></properties>
',NULL,NULL,NULL,NULL,0,'free');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('entando-widget-login_form_inspinia','<?xml version="1.0" encoding="UTF-8"?>
<properties><property key="en">Dropdown Sign In</property><property key="it">Dropdown Sign In</property></properties>
',NULL,NULL,NULL,NULL,1,'free');
