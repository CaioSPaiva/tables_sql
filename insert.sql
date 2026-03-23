-- Script para inserir dados na tabela "customer", "product", "product_stock" e "suppliers" do schema "store"

-- Conectar ao banco de dados ebac
\c ebac;

-- Inserir dados na tabela de clientes


-- Inserir primeiro cliente
INSERT INTO "store".customer (name, email, phone, document_number, address, city, state, postal_code, birth_date)
VALUES ('João Silva', 'joao.silva@example.com', '(11) 98765-4321', '123.456.789-00', 'Rua das Flores, 123', 'São Paulo', 'SP', '12345-678', '1985-07-15');

-- Inserir segundo cliente  
INSERT INTO "store".customer (name, email, phone, document_number, address, city, state, postal_code, birth_date)
VALUES ('Maria Oliveira', 'maria.oliveira@example.com', '(21) 87654-3210', '987.654.321-00', 'Avenida dos Andrades, 456', 'Rio de Janeiro', 'RJ', '98765-432', '1992-03-20');

-- Inserir terceiro cliente
INSERT INTO "store".customer (name, email, phone, document_number, address, city, state, postal_code, birth_date)
VALUES ('Pedro Almeida', 'pedro.almeida@example.com', '(31) 65432-1098', '654.321.987-00', 'Rua das Palmeiras, 789', 'Belo Horizonte', 'MG', '54321-098', '1978-11-05');

-- verificar os dados inseridos
SELECT * FROM "store".customer;


-- Inserir dados na tabela de produtos

-- Inserir produto Whey Protein
INSERT INTO "store".product (name, description, price, stock_quantity, sku, category)
VALUES ('Whey Protein', 'Suplemento proteico de alta qualidade', 99.99, 50, 'WP-001', 'Suplementos');

-- Inserir produto Creatina  
INSERT INTO "store".product (name, description, price, stock_quantity, sku, category)
VALUES ('Creatina', 'Suplemento para aumento de força e massa muscular', 59.90, 30, 'CR-002', 'Suplementos');

-- Inserir produto Pré-Treino
INSERT INTO "store".product (name, description, price, stock_quantity, sku, category)
VALUES ('Pré-Treino', 'Suplemento para aumentar a energia e o foco', 79.50, 40, 'PT-003', 'Suplementos');

-- verificar os dados inseridos
SELECT * FROM "store".product;


-- Inserir dados na tabela de fornecedores

-- Inserir fornecedor 1
INSERT INTO "store".suppliers (name, contact_person, phone, email, address, city, state, postal_code, country)
VALUES ('Suplementos Fitness', 'João Silva', '(11) 1234-5678', 'contato@suplementosfitness.com', 'Rua A, 123', 'São Paulo', 'SP', '12345-678', 'Brasil');

-- Inserir fornecedor 2 
INSERT INTO "store".suppliers (name, contact_person, phone, email, address, city, state, postal_code, country)
VALUES ('Nutrição Esportiva', 'Maria Oliveira', '(21) 9876-5432', 'contato@nutricaoesportiva.com', 'Avenida B, 456', 'Rio de Janeiro', 'RJ', '98765-432', 'Brasil');

-- Inserir fornecedor 3
INSERT INTO "store".suppliers (name, contact_person, phone, email, address, city, state, postal_code, country)
VALUES ('Suplementos Naturais', 'Pedro Almeida', '(31) 5678-9012', 'contato@suplementosnatural.com', 'Rua C, 789', 'Belo Horizonte', 'MG', '56789-012', 'Brasil');


--Inserir dados na tabela de estoque

-- Inserir estoque do Whey Protein
INSERT INTO "store".product_stock (product_id, quantity, location, supplier_id)
VALUES ((SELECT product_id FROM "store".product WHERE name = 'Whey Protein'), 50, 'Armazém A', 1);

-- Inserir estoque da Creatina
INSERT INTO "store".product_stock (product_id, quantity, location, supplier_id) 
VALUES ((SELECT product_id FROM "store".product WHERE name = 'Creatina'), 30, 'Armazém B', 2);

-- Inserir estoque do Pré-Treino
INSERT INTO "store".product_stock (product_id, quantity, location, supplier_id)
VALUES ((SELECT product_id FROM "store".product WHERE name = 'Pré-Treino'), 40, 'Armazém C', 3);

-- verificar os dados inseridos
SELECT * FROM "store".product_stock;