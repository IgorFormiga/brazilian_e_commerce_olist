LOAD DATA INFILE 'product_category_name_translation.csv'
  IGNORE INTO TABLE product_category_name_translation
  FIELDS TERMINATED BY ','
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES;