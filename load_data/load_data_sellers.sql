LOAD DATA INFILE 'olist_sellers_dataset.csv'
  IGNORE INTO TABLE sellers
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (seller_id,
  seller_zip_code_prefix,
  @vseller_city,
  @vseller_state)
  SET
  seller_city = NULLIF(@vseller_city,''),
  seller_state = NULLIF(@vseller_state,'')
  ;
  