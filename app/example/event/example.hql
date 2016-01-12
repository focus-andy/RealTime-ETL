DROP TABLE iknowetl_example;
CREATE EXTERNAL TABLE iknowetl_example 
(
event_logid string,
event_log_source    map<string, bigint>,
event_others    map<string, string>,
event_year              bigint,
event_month             bigint,
event_weekofyear        bigint,
event_dayofmonth        bigint,
event_time              string,
event_timestamp         bigint,
event_ip                string,
event_net_provider      string,
event_country           string,
event_city              string,
event_province          string,
event_baiduid           string,
event_userid            bigint,
event_cookie            string,
event_wiseuserid        string,
event_phonenum          string,
event_username          string,
event_bduss             string,
event_has_bduss         bigint,
event_url               string,
event_url_hostname      string,
event_urlpath           string,
event_urlparams         map<string, string>,
event_query             string,
event_referer           string,
event_refererpath       string,
event_refererparams     map<string, string>,
event_referer_hostname  string,
event_useragent         string,
event_browser           string,
event_browser_version   string,
event_os                string,
event_os_version        string,
event_device            string,
event_device_version    string,
event_brand             string,
event_pu                string,
event_httpstatus        bigint,
event_isspider          bigint,
event_spiderdetail      string,
event_isinternalip      bigint,
event_isbroken          bigint,
event_invaliddetail     string,
event_net_type          string,
event_email             string,
event_is_machine_log    bigint,
event_app_version       string,
event_browser_language  string,
event_browser_not_from_ua       string,
event_browser_version_not_from_ua       string,
event_click_pos         bigint,
event_click_target_title        string,
event_click_target_url  string,
event_click_target_url_hostname string,
event_click_target_url_site     string,
event_client_type       string,
event_cproid            string,
event_cuid              string,
event_device_not_from_ua        string,
event_device_type       string,
event_device_version_not_from_ua        string,
event_entrance_type     string,
event_format            string,
event_format_tn         string,
event_gender            string,
event_imei              string,
event_ip_long           bigint,
event_ipv6              string,
event_is_invalid_in_product     string,
event_isremoraabnor     bigint,
event_isubsspamday      bigint,
event_isubsspamhour     bigint,
event_location_bizarea  string,
event_location_city     string,
event_location_country  string,
event_location_district string,
event_location_province string,
event_location_r        bigint,
event_location_x        bigint,
event_location_y        bigint,
event_net_provider_not_from_ip  string,
event_os_not_from_ua    string,
event_os_version_not_from_ua    string,
event_page_display_number       bigint,
event_page_number       bigint,
event_resh              bigint,
event_resv              bigint,
event_template_name     string,
event_wiseantispamtag   string,
event_httpmethod        string,
event_loginfo           map<string, string>,
example_errno      bigint,
example_submit_optime     bigint,
example_submit_local_ip   string,
example_submit_uniqid     bigint,
) 
PARTITIONED BY ( event_day string, event_hour string, event_minute string) ROW FORMAT DELIMITED
FIELDS TERMINATED BY '' COLLECTION ITEMS TERMINATED BY ','  MAP KEYS TERMINATED BY ':'
STORED AS TEXTFILE LOCATION 'hdfs:///app/ns/iknow/hive/etl/example/';
