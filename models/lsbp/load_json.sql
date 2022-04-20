/* COMMENT */ 
select
$1:device_key::string as device_key,
$1:device_value::variant as device_value
, SPLIT_PART(metadata$filename, '/', -1) as FILENAME
, CURRENT_TIMESTAMP as DBT_LOAD_TS
from @iotdb.iotdemo.stage_read_json/ (FILE_FORMAT=>'iotdb.iotdemo.lsbp_json', pattern=>'.*.json') t
limit 500
/* limit added automatically by dbt cloud */