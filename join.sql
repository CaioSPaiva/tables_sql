--Com as as tabelas de produto e estoque já criadas, foi criado um relacionamento entre elas. 

ALTER TABLE "store".product_stock
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id)
REFERENCES "store".product(product_id);

SELECT 
    p.name,
    p.price,
    s.quantity,
    s.location
FROM "store".product p
JOIN "store".product_stock s
    ON p.product_id = s.product_id;

--Checklist para verificar o relacionamento entre as tabelas de produto e estoque:
\d "store".product_stock
