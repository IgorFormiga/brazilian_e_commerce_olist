-- Criação da tabela de Vendedores
CREATE TABLE `e_commerce_olist`.`sellers` (
  `seller_id` VARCHAR(35) NOT NULL,
  `seller_zip_code_prefix` varchar(7) NOT NULL,
  `seller_city` VARCHAR(50) NULL,
  `seller_state` VARCHAR(2) NULL);