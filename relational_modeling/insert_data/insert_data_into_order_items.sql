USE trasactional_model;

INSERT INTO trasactional_model.order_items
SELECT t1.order_id, t1.order_item_id, t1.product_id, t1.seller_id, t1.shipping_limit_date,
t1.price, t1.freight_value
FROM e_commerce_olist.order_items as t1
INNER JOIN trasactional_model.orders as t2
ON t1.order_id = t2.order_id;