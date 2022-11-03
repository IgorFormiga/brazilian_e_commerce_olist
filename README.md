# **Projeto: Modelagem Dimensional**

### **Objetivo:** Design e implementação de um data warehouse.

### **Linguagem de programação:** SQL

### **Banco de dados:** MySQL Workbench 

### **Descrição:**
O projeto será desenvolvido em um ambiente de estudo (simulação), por conta disso existe algumas limitações físicas em questão de hardware (uma máquina virtual e um banco de dados). Na hora de implementar o DW o ideal seria possuir pelo menos três bancos de dados que são: banco de dados de origem (modelo transcional), banco de dados para área intermediária (stage area) e banco de dados para o DW.

Como alternativa para simulação, será criado quatro Schemas no Workbench do MySQL dentro do mesmo banco. Os Schemas são: e_commerce_olist, trasactional_model, stage_area e data_warehouse.

#### **Schemas:**

- e_commerce_olist (source): Schema para carregamento dos dados sem relacionamento entre tabelas e chaves;
- trasactional_model: Schema para comportar o modelo relacional a partir do Schema e_commerce_olist;
- stage_area: Schema para realizar limpeza dos dados e realização da modelagem dimensional; 
- relational_modeling: Schema para comportar o modelo dimensional.

OBS: O Schema e_commerce_olist foi criada para armazenar os dados brutos. A base de dados possuía algumas inconsistências de relacionamento e chaves primárias que foram solucionadas no Schema trasactional_model.


### **Base de dados:** ([link](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce))
O projeto foi desenvolvido utilizado um conjunto de dados público de e-commerce brasileiro de pedidos feitos na Olist Store, a maior loja de departamentos dos marketplaces brasileiros. O dataset possui informações de 100 mil pedidos de 2016 a 2018 feitos em vários marketplaces no Brasil. Os dados estão disponibilizados através
de arquivos Comma-separated values (*.csv*).
