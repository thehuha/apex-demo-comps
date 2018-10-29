prompt --application/set_environment/
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.04.04'
,p_default_workspace_id=>1470610789947540
);
end;
/
prompt  WORKSPACE 1470610789947540
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   20:03 Ponedjeljak Listopad 29, 2018
--   Exported By:     ADMIN
--   Export Type:     Workspace Export
--   Version:         18.1.0.00.45
--   Instance ID:     220717191816403
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_180100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>1470610789947540);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace LOCAL...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 1470747995947577
 ,p_provisioning_company_id => 1470610789947540
 ,p_short_name => 'LOCAL'
 ,p_display_name => 'LOCAL'
 ,p_first_schema_provisioned => 'HR'
 ,p_company_schemas => 'HR'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'LOCAL'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'LOCAL'
 ,p_files_version => 1
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '1470547567947540',
  p_user_name                    => 'ADMIN',
  p_first_name                   => 'Daniel',
  p_last_name                    => 'Huha',
  p_description                  => '',
  p_email_address                => 'thehuha@gmail.com',
  p_web_password                 => '145A7CF7DC24D471004073759A6D97B9C8E77659',
  p_web_password_format          => '5;2;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'HR',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201810111902','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '1471695437966246',
  p_user_name                    => 'DHUHA',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'thehuha@gmail.com',
  p_web_password                 => '5A726EC6224E952FB7443977F27D5E8128FCA7DF',
  p_web_password_format          => '5;2;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'HR',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201810110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--csv data loading
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_flow_api.create_password_history (
    p_id => 1471214396952584,
    p_user_id => 1470547567947540,
    p_password => '145A7CF7DC24D471004073759A6D97B9C8E77659');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 1470994036947598,
    p_user_id => 1470547567947540,
    p_password => 'A1912B2AF6633EE0C926E5BBC2013614C0F83BFC');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 1471777104966262,
    p_user_id => 1471695437966246,
    p_password => '5A726EC6224E952FB7443977F27D5E8128FCA7DF');
end;
/
----------------
--preferences
--
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1471454196962130,
    p_user_id => 'ADMIN',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1625185111009187,
    p_user_id => 'DHUHA',
    p_preference_name => 'APEX_IG_1610924665995774_CURRENT_REPORT',
    p_attribute_value => '1611827917995781:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1633773103357657,
    p_user_id => 'DHUHA',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '327:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1610185956995736,
    p_user_id => 'DHUHA',
    p_preference_name => 'WIZARD_SQL_SOURCE_TYPE',
    p_attribute_value => 'TABLE');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1609348049981240,
    p_user_id => 'DHUHA',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4210471278176642,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1609640728981290,
    p_user_id => 'DHUHA',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '100');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4210660779177164,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP_IR_4000_P260_W40585608941890825',
    p_attribute_value => '40587517034894377____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1625224946009588,
    p_user_id => 'DHUHA',
    p_preference_name => 'APEX_IG_1619932187999811_CURRENT_REPORT',
    p_attribute_value => '1620867934999812:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1640994796083065,
    p_user_id => 'DHUHA',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '0');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4210839146177797,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP_IR_4000_P267_W925260893554540223',
    p_attribute_value => '941041546743949140____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 2502017573610104,
    p_user_id => 'DHUHA',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '120:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4210903761177807,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP4000_P267_R22486830752876187_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4211359352180345,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP4000_P4653_R549191974509047647_SORT',
    p_attribute_value => 'fsp_sort_3_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4211468868180352,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP4000_P4653_R655680133816025797_SORT',
    p_attribute_value => 'fsp_sort_3_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4211568023180361,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP4000_P4653_R244091719536099844_SORT',
    p_attribute_value => 'fsp_sort_4_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1651994946136940,
    p_user_id => 'DHUHA',
    p_preference_name => 'PERSISTENT_ITEM_P34_ROWS',
    p_attribute_value => '50');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4200517204212571,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP100_P7_R1643789668083328_SORT',
    p_attribute_value => 'fsp_sort_8');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4199828674211034,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP_IR_212_P2_W4188746351209680',
    p_attribute_value => '4199368876211033____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4200442900211182,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP_IR_212_P4_W4197650597209701',
    p_attribute_value => '4199994857211181____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1652143059150887,
    p_user_id => 'DHUHA',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '932');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4210207401175800,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1753193323765599,
    p_user_id => 'DHUHA',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '145:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 4211126657179394,
    p_user_id => 'DHUHA',
    p_preference_name => 'FSP_IR_4000_P4003_W632908938554265910',
    p_attribute_value => '632910390117265918____');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 2507563616057932
 ,p_command => 
'select * from zaposlenik'
    ,p_created_by => 'DHUHA'
    ,p_created_on => to_date('201810232021','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'HR');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 2518223542513832
 ,p_command => 
'create table dh_countries(country_id number primary key, country_name varchar2(200), country_desc varchar2(200)); '
    ,p_created_by => 'DHUHA'
    ,p_created_on => to_date('201810241951','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'HR');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 2518497595515077
 ,p_command => 
'drop table dh_countries'
    ,p_created_by => 'DHUHA'
    ,p_created_on => to_date('201810241951','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'HR');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 2518310199514434
 ,p_command => 
'drop table dh_countries(country_id number primary key, country_name varchar2(200), country_desc varchar2(200)); '
    ,p_created_by => 'DHUHA'
    ,p_created_on => to_date('201810241951','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'HR');
end;
/
----------------
--user access log
--
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810111902','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 5,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810111902','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810111907','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810112019','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810151940','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810162336','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810171000','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'NATIVE_APEX_ACCOUNTS',
    p_app => 123,
    p_owner => 'HR',
    p_access_date => to_date('201810222027','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810231910','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810241924','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810241924','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810112018','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810131305','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810131952','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810241954','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810131306','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810131321','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810131331','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810131502','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810132313','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810151941','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810152258','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810162319','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810171603','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810180801','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810202230','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'NATIVE_APEX_ACCOUNTS',
    p_app => 204,
    p_owner => 'HR',
    p_access_date => to_date('201810242016','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'NATIVE_APEX_ACCOUNTS',
    p_app => 205,
    p_owner => 'HR',
    p_access_date => to_date('201810242018','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'NATIVE_APEX_ACCOUNTS',
    p_app => 208,
    p_owner => 'HR',
    p_access_date => to_date('201810242022','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810111905','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810131325','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810131332','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810141741','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810151942','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810152005','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810152008','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'DHUHA',
    p_auth_method =n Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810251421','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'NATIVE_APEX_ACCOUNTS',
    p_app => 210,
    p_owner => 'HR',
    p_access_date => to_date('201810251422','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810251424','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'NATIVE_APEX_ACCOUNTS',
    p_app => 212,
    p_owner => 'HR',
    p_access_date => to_date('201810251427','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Application Express Authentication',
    p_app => 100,
    p_owner => 'HR',
    p_access_date => to_date('201810251951','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'DHUHA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_180100',
    p_access_date => to_date('201810271924','YYYYMMDDHH24MI'),
    p_ip_address => '127.0.0.1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'HR';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA HR - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_180100
-- Exported 20:03 Ponedjeljak Listopad 29, 2018 by: ADMIN
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 20:03 Ponedjeljak Listopad 29, 2018 by: ADMIN
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'LOCAL';
 
end;
/

begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

