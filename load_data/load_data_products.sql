LOAD DATA INFILE 'olist_products_dataset.csv'
  IGNORE INTO TABLE products
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (product_id,
  @vproduct_category_name,
  @vproduct_name_lenght,
  @vproduct_description_lenght,
  @vproduct_photos_qty,
  @vproduct_weight_g,
  @vproduct_length_cm,
  @vproduct_height_cm,
  @vproduct_width_cm)
  SET
  product_name_lenght = NULLIF(@vproduct_name_lenght,''),
  product_name_lenght = NULLIF(@vproduct_name_lenght,''),
  product_description_lenght = NULLIF(@vproduct_description_lenght,''),
  product_photos_qty = NULLIF(@vproduct_photos_qty,''),
  product_weight_g = NULLIF(@vproduct_weight_g,''),
  product_length_cm = NULLIF(@vproduct_length_cm,''),
  product_height_cm = NULLIF(@vproduct_height_cm,''),
  product_width_cm = NULLIF(@vproduct_width_cm,'')
  ;