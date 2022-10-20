-- Criação da tabela de Clientes
CREATE TABLE `e_commerce_olist`.`customers` (
  `id_order` VARCHAR(32) NOT NULL,
  `id_customer` VARCHAR(32) NOT NULL,
  `zip_code_prefix` varchar(7) NOT NULL,
  `city` VARCHAR(50) NULL,
  `state` VARCHAR(2) NULL,
  PRIMARY KEY (`id_order`));
  