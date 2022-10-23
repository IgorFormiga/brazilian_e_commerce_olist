-- Criação da tabela Orders
CREATE TABLE `e_commerce_olist`.`orders` (
  `order_id` varchar(35) NOT NULL,
  `customer_id` varchar(35) NOT NULL,
  `order_status` varchar(20) NULL,
  `order_purchase_timestamp` datetime NULL,
  `order_approved_at` datetime NULL,
  `order_delivered_carrier_date` datetime NULL,
  `order_delivered_customer_date` datetime NULL,
  `order_estimated_delivery_date` datetime NULL);