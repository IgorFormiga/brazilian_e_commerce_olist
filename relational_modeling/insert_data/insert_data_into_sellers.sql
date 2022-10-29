USE trasactional_model;

INSERT INTO sellers
SELECT seller_id, seller_zip_code_prefix, seller_city, seller_state
FROM e_commerce_olist.sellers;