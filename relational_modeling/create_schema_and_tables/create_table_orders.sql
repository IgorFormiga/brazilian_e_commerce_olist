-- Criação da tabela Orders
USE trasactional_model;

CREATE TABLE `trasactional_model`.`orders` (
  `order_id` VARCHAR(35) NOT NULL,
  `customer_id` VARCHAR(35) NOT NULL,
  `order_status` VARCHAR(20) NULL,
  `order_purchase_timestamp` datetime NULL,
  `order_approved_at` datetime NULL,
  `order_delivered_carrier_date` datetime NULL,
  `order_delivered_customer_date` datetime NULL,
  `order_estimated_delivery_date` datetime NULL,
  PRIMARY KEY (`order_id`))
  DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;