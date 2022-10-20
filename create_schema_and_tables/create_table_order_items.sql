  -- Criação da tabela order_items
  CREATE TABLE `e_commerce_olist`.`order_items` (
  `order_id` VARCHAR(32) NOT NULL,
  `order_item_id` INT NULL,
  `product_id` VARCHAR(32) NOT NULL,
  `seller_id` VARCHAR(32) NOT NULL,
  `shipping_limit_date` DATETIME NULL,
  `price` DECIMAL(6,2) NULL,
  `freight_value` DECIMAL(5,2) NULL,
  PRIMARY KEY (`order_id`, `product_id`, `seller_id`));