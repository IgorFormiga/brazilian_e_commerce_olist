LOAD DATA INFILE 'olist_order_payments_dataset.csv'
  IGNORE INTO TABLE order_payments
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (order_id,
  order_paymentscol,
  @vpayment_type,
  @vpayment_installments,
  @vpayment_value)
  SET
  payment_type = NULLIF(@vpayment_type,''),
  payment_installments = NULLIF(@vpayment_installments,''),
  payment_value = NULLIF(@vpayment_value,'')
  ;
  
/*
Realizando o LOAD dos dados na tabela é informado a ocorrência de Warnings. A chave primária
foi definida como sendo "order_id" já que para cada ordem de compra só haverá uma ordem de pagamento.

Records: 103886  Deleted: 0  Skipped: 4446  Warnings: 4446
*/
