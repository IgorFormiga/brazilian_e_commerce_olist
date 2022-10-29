USE trasactional_model;

INSERT INTO customers
SELECT max(customer_id), customer_unique_id, zip_code_prefix, city, state
FROM e_commerce_olist.customers
group by customer_id;
