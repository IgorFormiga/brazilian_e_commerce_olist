-- Criação de todas as chaves estrangeiras para as tabelas
USE trasactional_model;
-- TABLE: order_items
ALTER TABLE order_items ADD CONSTRAINT fk_products 
FOREIGN KEY (product_id) REFERENCES products (product_id);

ALTER TABLE order_items ADD CONSTRAINT fk_sellers 
FOREIGN KEY (seller_id) REFERENCES sellers (seller_id);

ALTER TABLE order_items ADD CONSTRAINT fk_order
FOREIGN KEY (order_id) REFERENCES orders (order_id);

-- TABLE: order_reviews 
ALTER TABLE order_reviews ADD CONSTRAINT fk_order_review
FOREIGN KEY (order_id) REFERENCES orders (order_id);

-- TABLE: orders
ALTER TABLE orders ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

-- TABLE: order_payments 
ALTER TABLE order_payments ADD CONSTRAINT fk_order_payments
FOREIGN KEY (order_id) REFERENCES orders (order_id);

