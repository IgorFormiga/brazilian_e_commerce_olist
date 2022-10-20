  -- Criação da tabela Ordens de pagamento
  CREATE TABLE `e_commerce_olist`.`order_payments` (
  `order_id` VARCHAR(32) NOT NULL,
  `order_paymentscol` INT NOT NULL,
  `payment_type` VARCHAR(20) NULL,
  `payment_installments` INT NULL,
  `payment_value` DECIMAL(8,2) NULL,
  PRIMARY KEY (`order_id`, `order_paymentscol`));