USE trasactional_model;

/*  Com duvida em relação a integridade dos dados em relação ao sistema transacional 
(como demostrado a baixo), vamos realizar o insert através de uma query que garanta
as relação de chaves estrangeiras:
*/
-- Resultado do select: 99441
select count(*) from e_commerce_olist.orders;

-- Resultado do select: 97915
select count(*) from
(SELECT max(t1.order_id), t1.customer_id, t1.order_status, t1.order_purchase_timestamp,
t1.order_approved_at, t1.order_delivered_carrier_date, t1.order_delivered_customer_date,
t1.order_estimated_delivery_date
FROM e_commerce_olist.orders as t1
INNER JOIN e_commerce_olist.order_items as t2
ON t1.order_id = t2.order_id
INNER JOIN e_commerce_olist.customers as t3
ON t1.customer_id = t3.customer_id
INNER JOIN e_commerce_olist.sellers as t4
on t2.seller_id = t4.seller_id
INNER JOIN e_commerce_olist.products as t5
on t2.product_id = t5.product_id
INNER JOIN e_commerce_olist.order_reviews as t6
on t1.order_id = t6.order_id
INNER JOIN e_commerce_olist.order_payments as t7
on t1.order_id = t7.order_id
group by t1.order_id) a;

-- Inserindo os dados na tabela 

INSERT INTO trasactional_model.orders
SELECT max(t1.order_id), t1.customer_id, t1.order_status, t1.order_purchase_timestamp,
t1.order_approved_at, t1.order_delivered_carrier_date, t1.order_delivered_customer_date,
t1.order_estimated_delivery_date
FROM e_commerce_olist.orders as t1
INNER JOIN e_commerce_olist.order_items as t2
ON t1.order_id = t2.order_id
INNER JOIN e_commerce_olist.customers as t3
ON t1.customer_id = t3.customer_id
INNER JOIN e_commerce_olist.sellers as t4
on t2.seller_id = t4.seller_id
INNER JOIN e_commerce_olist.products as t5
on t2.product_id = t5.product_id
INNER JOIN e_commerce_olist.order_reviews as t6
on t1.order_id = t6.order_id
INNER JOIN e_commerce_olist.order_payments as t7
on t1.order_id = t7.order_id
group by t1.order_id;





