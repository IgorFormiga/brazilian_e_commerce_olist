LOAD DATA INFILE 'olist_geolocation_dataset.csv'
  IGNORE INTO TABLE geolocation
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (geolocation_zip_code_prefix,
  geolocation_lat,
  geolocation_lng,
  @vgeolocation_city,
  @vgeolocation_state)
  SET
  geolocation_city = NULLIF(@vgeolocation_city,''),
  geolocation_state = NULLIF(@vgeolocation_state,'')
  ;

/*
Realizando o LOAD dos dados na tabela é informado a ocorrência de Warnings. Mesmo definindo
uma chave primeira composta (`geolocation_zip_code_prefix`, `geolocation_lat`, `geolocation_lng`)
para criação da tabela de geolocation, são Skipped 280009 inserções dos 1000163 Records. Este fato
aconece pois alguns dados possuem a chave primeira duplicada.

Records: 1000163  Deleted: 0  Skipped: 280009  Warnings: 280327
*/