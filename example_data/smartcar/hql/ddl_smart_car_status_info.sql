
CREATE DATABASE IF NOT EXISTS smartcar;

CREATE EXTERNAL TABLE IF NOT EXISTS smartcar.smartcar_status_info (
	reg_date string,
	car_number string,
	tire_fl string,
	tire_fr string,
	tire_bl string,
	tire_br string,
	light_fl string,
	light_fr string,
	light_bl string,
	light_br string,
	engine string,
	break string,
	battery string
)
PARTITIONED BY( dt string )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS textfile
LOCATION '/user/hive/warehouse/smartcar/smartcar_status_info'
TBLPROPERTIES ("skip.header.line.count"="1")
;

MSCK REPAIR TABLE smartcar.smartcar_status_info;
