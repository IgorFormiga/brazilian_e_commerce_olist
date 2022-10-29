-- Criação da tabela de Clientes
USE trasactional_model;

CREATE TABLE `trasactional_model`.`customers` (
  `customer_id` VARCHAR(35) NOT NULL,
  `customer_unique_id` VARCHAR(35) NOT NULL,
  `zip_code_prefix` varchar(7) NULL,
  `city` VARCHAR(50) NULL,
  `state` VARCHAR(2) NULL,
  PRIMARY KEY (`customer_id`))
  DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
  
  