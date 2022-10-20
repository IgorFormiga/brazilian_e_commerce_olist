-- Criação da tabela de Ordens de Reviews
  CREATE TABLE `e_commerce_olist`.`order_reviews` (
  `review_id` VARCHAR(35) NOT NULL,
  `order_id` VARCHAR(35) NOT NULL,
  `review_score` VARCHAR(45) NULL,
  `review_comment_title` VARCHAR(50) NULL,
  `review_comment_message` VARCHAR(250) NULL,
  `review_creation_date` DATETIME NULL,
  `review_answer_timestamp` DATETIME NULL,
  PRIMARY KEY (`review_id`, `order_id`))
  DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;