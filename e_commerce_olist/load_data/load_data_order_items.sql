LOAD DATA INFILE 'olist_order_items_dataset.csv'
  IGNORE INTO TABLE order_items
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (order_id,
  @vorder_item_id,
  product_id,
  seller_id,
  @vshipping_limit_date,
  @vprice,
  @vfreight_value)
  SET
  order_item_id = NULLIF(@vorder_item_id,''),
  shipping_limit_date = NULLIF(@vshipping_limit_date,''),
  price = NULLIF(@vprice,''),
  freight_value = NULLIF(@vfreight_value,'')
  ;
  
/*
Realizando o LOAD dos dados na tabela é informado a ocorrência de Warnings. A chave primária
foi definida como sendo "order_id" já que para cada ordem de compra só haverá uma ordem de itens.

Records: 112650  Deleted: 0  Skipped: 13984  Warnings: 13984
*/