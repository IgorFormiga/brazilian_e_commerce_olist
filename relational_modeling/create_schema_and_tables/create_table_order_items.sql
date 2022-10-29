  -- Criação da tabela order_items
  USE trasactional_model;
  
  CREATE TABLE `trasactional_model`.`order_items` (
  `order_id` VARCHAR(35) NOT NULL,
  `order_item_id` INT NULL,
  `product_id` VARCHAR(35) NOT NULL,
  `seller_id` VARCHAR(35) NOT NULL,
  `shipping_limit_date` DATETIME NULL,
  `price` DECIMAL(6,2) NULL,
  `freight_value` DECIMAL(5,2) NULL,
  PRIMARY KEY (`order_id`))
  DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;