LOAD DATA INFILE 'olist_order_reviews_dataset.csv'
  IGNORE INTO TABLE order_reviews
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (review_id, 
  order_id,
  @vreview_score,
  @vreview_comment_title,
  @vreview_comment_message,
  @vreview_creation_date,
  @vreview_answer_timestamp)
  SET
  review_score = NULLIF(@vreview_score,''),
  review_comment_title = NULLIF(@vreview_comment_title,''),
  review_comment_message = NULLIF(@vreview_comment_message,''),
  review_creation_date = NULLIF(@vreview_creation_date,''),
  review_answer_timestamp = NULLIF(@vreview_answer_timestamp,'')
  ;