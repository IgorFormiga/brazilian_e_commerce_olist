-- Criação do banco de dados transacional 
CREATE SCHEMA `trasactional_model` DEFAULT CHARACTER SET utf8;

/*
Foi necessario criacao de um banco de dados transacional serparado
do e_commerce_olist esta completamente corrompida e com dados
que não respeitam o modelo relacional entre PK (dados duplicadas) e 
SK (dados que não coincidem em diferentes tabelas).
*/
