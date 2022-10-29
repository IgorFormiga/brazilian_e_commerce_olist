  -- Criação da tabela Ordens de pagamento
  USE trasactional_model;
  
  CREATE TABLE `trasactional_model`.`order_payments` (
  `order_id` VARCHAR(35) NOT NULL,
  `order_paymentscol` INT NOT NULL,
  `payment_type` VARCHAR(20) NULL,
  `payment_installments` INT NULL,
  `payment_value` DECIMAL(8,2) NULL,
  PRIMARY KEY (`order_id`))
  DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;