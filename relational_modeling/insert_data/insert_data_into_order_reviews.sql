USE trasactional_model;

INSERT IGNORE trasactional_model.order_reviews
SELECT t1.review_id, t1.order_id, t1.review_score, t1.review_comment_title, t1.review_comment_message,
t1.review_creation_date, review_answer_timestamp
FROM e_commerce_olist.order_reviews as t1
INNER JOIN trasactional_model.orders as t2
ON t1.order_id = t2.order_id;

