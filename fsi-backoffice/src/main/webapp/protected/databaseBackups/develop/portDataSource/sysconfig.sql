INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataobjectsubdir','Name of the sub-directory containing dataobject indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpmail_config','Configurazione del servizio di invio eMail','<?xml version="1.0" encoding="UTF-8"?>
<mailConfig>
	<senders>
		<sender code="CODE1">EMAIL1@EMAIL.COM</sender>
		<sender code="CODE2">EMAIL2@EMAIL.COM</sender>
	</senders>
	<smtp debug="false">
		<host>localhost</host>
		<port>25000</port>
		<user></user>
		<password></password>
		<security>std</security>
	</smtp>
</mailConfig>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','imageDimensions','Definition of the resized image dimensions','<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>130</dimx>
		<dimy>130</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>150</dimx>
		<dimy>150</dimy>
	</Dimension>
</Dimensions>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','subIndexDir','Name of the sub-directory containing content indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','contentTypes','Definition of the Content Types','<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="**NULL**" listmodel="10011" defaultmodel="10001">
		<attributes>
			<attribute name="Title" attributetype="Text" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','params','Configuration params.','<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">classic</Param>
	<Param name="hypertextEditor">none</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<Param name="firstTimeMessages">false</Param>
	<Param name="baseUrl">request</Param>
	<Param name="baseUrlContext">true</Param>
	<Param name="useJsessionId">false</Param>
	<Param name="gravatarIntegrationEnabled">false</Param>
	<Param name="editEmptyFragmentEnabled">false</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<FeaturesOnDemand>
		<Param name="groupsOnDemand">true</Param>
		<Param name="categoriesOnDemand">true</Param>
		<Param name="contentTypesOnDemand">true</Param>
		<Param name="contentModelsOnDemand">true</Param>
		<Param name="apisOnDemand">true</Param>
		<Param name="resourceArchivesOnDemand">true</Param>
	</FeaturesOnDemand>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>
	</ExtendendPrivacyModule>
	<ExtraParams>
		<Param name="page_preview_hash">xaHj5I2VZ1jNO6nOGOTv</Param>
	</ExtraParams>
</Params>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','langs','Definition of the system languages','<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>true</default>
	</Lang>
</Langs>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','userProfileTypes','User Profile Types Definitions','<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Default user profile">
		<attributes>
			<attribute name="fullname" attributetype="Monotext" description="Full Name" searchable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:fullname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" description="Email" searchable="true">
				<validations>
					<required>true</required>
					<regexp><![CDATA[.+@.+.[a-z]+]]></regexp>
				</validations>
				<roles>
					<role>userprofile:email</role>
				</roles>
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataTypeDefinitions','Definition of the Type Types','<?xml version="1.0" encoding="UTF-8"?>
<datatypes>
	<datatype typecode="AAA" typedescr="commercial-client-onboarding.ClientOnboardingProcess_5fdf1ed1672f5358e70570bd7f50b163" viewpage="**NULL**" listmodel="1" defaultmodel="1">
		<attributes>
			<attribute name="client_address" attributetype="Monotext" />
			<attribute name="client_name" attributetype="Monotext" />
			<attribute name="client_country" attributetype="Monotext" />
			<attribute name="accountManager" attributetype="Monotext" />
			<attribute name="client_phoneNumber" attributetype="Monotext" />
			<attribute name="client_email" attributetype="Monotext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="party_name" attributetype="Monotext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="party_surname" attributetype="Monotext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</datatype>
</datatypes>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpkiebpm_config','KIE-BPM service configuration','<?xml version="1.0" encoding="UTF-8"?>
<kieBpmConfig>
   <active>true</active>
   <username>kieserver</username>
   <password>kieserver1!</password>
   <hostname>co-client-onboarding-developer.54.36.53.206.xip.io</hostname>
   <schema>http</schema>
   <port>80</port>
   <webapp>kie-server</webapp>
   <timeout>500</timeout>
</kieBpmConfig>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','entandoComponentsReport','The component installation report','<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2017-12-21 17:43:46</creation>
	<lastupdate>2017-12-21 17:43:48</lastupdate>
	<components>
		<component code="entandoCore" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="sysconfig" />
					<table name="categories" />
					<table name="localstrings" />
					<table name="pagemodels" />
					<table name="pages" />
					<table name="pages_metadata_online" />
					<table name="pages_metadata_draft" />
					<table name="widgetcatalog" />
					<table name="guifragment" />
					<table name="widgetconfig" />
					<table name="widgetconfig_draft" />
					<table name="uniquekeys" />
				</datasource>
				<datasource name="servDataSource" status="OK">
					<table name="authgroups" />
					<table name="authpermissions" />
					<table name="authroles" />
					<table name="authrolepermissions" />
					<table name="authusers" />
					<table name="authusergrouprole" />
					<table name="api_oauth_consumers" />
					<table name="api_oauth_tokens" />
					<table name="apicatalog_methods" />
					<table name="apicatalog_services" />
					<table name="authuserprofiles" />
					<table name="authuserprofilesearch" />
					<table name="authuserprofileattrroles" />
					<table name="actionlogrecords" />
					<table name="actionlogrelations" />
					<table name="dataobjectmodels" />
					<table name="dataobjects" />
					<table name="dataobjectrelations" />
					<table name="dataobjectsearch" />
					<table name="dataobjectattributeroles" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpmail" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jprestapi" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-login_form_inspinia" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jacms" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="contentmodels" />
					<table name="contents" />
					<table name="resources" />
					<table name="resourcerelations" />
					<table name="contentrelations" />
					<table name="contentsearch" />
					<table name="contentattributeroles" />
					<table name="workcontentrelations" />
					<table name="workcontentsearch" />
					<table name="workcontentattributeroles" />
				</datasource>
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-generic" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-language_choose_inspinia" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-search_result_inspinia" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-inspinia" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-page-inspinia" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-admin-console" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="authusershortcuts" />
					<table name="actionloglikerecords" />
					<table name="actionlogcommentrecords" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-portal-ui" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_bar_inspinia" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpkiebpm" date="2017-12-21 17:43:46" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="jpkiebpm_kieformoverride" />
					<table name="jpkiebpm_widgetinfo" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-search_form_inspinia" date="2017-12-21 17:43:47" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>

');
