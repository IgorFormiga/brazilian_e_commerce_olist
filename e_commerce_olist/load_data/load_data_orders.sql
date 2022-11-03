LOAD DATA INFILE 'olist_orders_dataset.csv'
  IGNORE INTO TABLE orders
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (order_id, customer_id, 
  @vorder_status, 
  @vorder_purchase_timestamp,
  @vorder_approved_at,
  @vorder_delivered_carrier_date,
  @vorder_delivered_customer_date,
  @vorder_estimated_delivery_date)
  SET
  order_status = NULLIF(@vorder_status,''),
  order_purchase_timestamp = NULLIF(@vorder_purchase_timestamp,''),
  order_approved_at = NULLIF(@vorder_approved_at,''),
  order_delivered_carrier_date = NULLIF(@vorder_delivered_carrier_date,''),
  order_delivered_customer_date = NULLIF(@vorder_delivered_customer_date,''),
  order_estimated_delivery_date = NULLIF(@vorder_estimated_delivery_date,'')
  ;
