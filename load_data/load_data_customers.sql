LOAD DATA INFILE 'olist_customers_dataset.csv'
  IGNORE INTO TABLE customers
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (customer_id,
  customer_unique_id,
  zip_code_prefix,
  @vcity,
  @vstate)
  SET
  city = NULLIF(@vcity,''),
  state = NULLIF(@vstate,'')
  ;