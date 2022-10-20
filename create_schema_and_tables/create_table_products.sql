-- Criação da tabela de Produtos
CREATE TABLE `e_commerce_olist`.`products` (
  `product_id` VARCHAR(32) NOT NULL,
  `product_category_name` VARCHAR(50) NULL,
  `product_name_lenght` DECIMAL(4,1) NULL,
  `product_description_lenght` DECIMAL(5,1) NULL,
  `product_photos_qty` DECIMAL(2,1) NULL,
  `product_weight_g` DECIMAL(5,1) NULL,
  `product_length_cm` DECIMAL(3,1) NULL,
  `product_height_cm` DECIMAL(3,1) NULL,
  `product_width_cm` DECIMAL(3,1) NULL,
  PRIMARY KEY (`product_id`));