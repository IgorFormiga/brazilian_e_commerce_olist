LOAD DATA INFILE 'olist_customers_dataset.csv'
  IGNORE INTO TABLE customers
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (id_order,
  id_customer,
  zip_code_prefix,
  @vcity,
  @vstate)
  SET
  city = NULLIF(@vcity,''),
  state = NULLIF(@vstate,'')
  ;
  