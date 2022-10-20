-- Criação da tabela Orders
CREATE TABLE `orders` (
  `order_id` varchar(32) NOT NULL,
  `customer_id` varchar(32) NOT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `order_purchase_timestamp` datetime DEFAULT NULL,
  `order_approved_at` datetime DEFAULT NULL,
  `order_delivered_carrier_date` datetime DEFAULT NULL,
  `order_delivered_customer_date` datetime DEFAULT NULL,
  `order_estimated_delivery_date` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;