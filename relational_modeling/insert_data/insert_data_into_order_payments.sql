USE trasactional_model;

INSERT INTO trasactional_model.order_payments
SELECT MAX(t1.order_id) AS order_id, t1.order_paymentscol, t1.payment_type, t1.payment_installments,
t1.payment_value
FROM e_commerce_olist.order_payments as t1
INNER JOIN trasactional_model.orders as t2
ON t1.order_id = t2.order_id
GROUP BY t1.order_id;
