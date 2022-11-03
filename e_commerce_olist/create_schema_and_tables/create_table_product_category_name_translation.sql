-- Criação da tabela de Tradução das categorias de nome
CREATE TABLE `e_commerce_olist`.`product_category_name_translation` (
  `product_category_name` VARCHAR(100) NOT NULL,
  `product_category_name_english` VARCHAR(100) NULL,
  PRIMARY KEY (`product_category_name`));