-- Criação da tabela de geolocalização
CREATE TABLE `e_commerce_olist`.`geolocation` (
  `geolocation_zip_code_prefix` varchar(7) NOT NULL,
  `geolocation_lat` DECIMAL(20,17) NOT NULL,
  `geolocation_lng` DECIMAL(20,17) NOT NULL,
  `geolocation_city` VARCHAR(50) NULL,
  `geolocation_state` VARCHAR(2) NULL,
  PRIMARY KEY (`geolocation_lat`, `geolocation_lng`));