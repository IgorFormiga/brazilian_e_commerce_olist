-- Criação da tabela de Vendedores
USE trasactional_model;

CREATE TABLE `trasactional_model`.`sellers` (
  `seller_id` VARCHAR(35) NOT NULL,
  `seller_zip_code_prefix` varchar(7) NOT NULL,
  `seller_city` VARCHAR(50) NULL,
  `seller_state` VARCHAR(2) NULL,
  PRIMARY KEY (`seller_id`))
  DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;