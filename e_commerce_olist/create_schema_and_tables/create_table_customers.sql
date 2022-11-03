-- Criação da tabela de Clientes
CREATE TABLE `e_commerce_olist`.`customers` (
  `customer_id` VARCHAR(35) NOT NULL,
  `customer_unique_id` VARCHAR(35) NOT NULL,
  `zip_code_prefix` varchar(7) NULL,
  `city` VARCHAR(50) NULL,
  `state` VARCHAR(2) NULL);
  