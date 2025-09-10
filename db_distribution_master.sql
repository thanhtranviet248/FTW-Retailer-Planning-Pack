-- Create distribution_master table
CREATE TABLE distribution_master
(
	customer_code		TEXT		NOT NULL,
	store_code			INTEGER		NOT NULL,
	b2b_b2c				SMALLINT	NOT NULL,
	channel				TEXT		NOT NULL,
	region				TEXT 		NOT NULL,
	city_level			TEXT		NOT NULL,
	store_concept		TEXT		NOT NULL,
	store_level			TEXT		NOT NULL,
	trade_term			TEXT		NOT NULL,
	area_group			TEXT		NOT NULL,
	store_type      	TEXT		NOT NULL,
	urbanization		TEXT		NOT NULL,
	customer_name   	TEXT		NOT NULL,
	branch				TEXT		NOT NULL,
	showroom_area		FLOAT4		NOT NULL,
	warehouse_area		FLOAT4		NOT NULL,
	applied_year		SMALLINT	NOT NULL,
	active_store		SMALLINT	NOT NULL,
	PRIMARY KEY (customer_code, applied_year)
);

-- Copy data from csv file to distribution_master table
COPY distribution_master
FROM 'D:\footwear_retail_chain_project\0. input_data\distribution\processed_data\distribution_master.csv'
DELIMITER ','
CSV HEADER;

-- Recheck distribution_master data
SELECT * FROM distribution_master LIMIT 10;