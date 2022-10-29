-- Criação da tabela de Produtos
USE trasactional_model;

CREATE TABLE `trasactional_model`.`products` (
  `product_id` VARCHAR(35) NOT NULL,
  `product_category_name` VARCHAR(50) NULL,
  `product_name_lenght` INT NULL,
  `product_description_lenght` INT NULL,
  `product_photos_qty` INT NULL,
  `product_weight_g`INT NULL,
  `product_length_cm` INT NULL,
  `product_height_cm` INT NULL,
  `product_width_cm` INT NULL,
  PRIMARY KEY (`product_id`))
  DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;