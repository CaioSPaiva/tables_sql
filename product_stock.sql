--Construindo uma agregação para saber a quantidade de itens que cada produto tem. Utilize a função de Group By e Sum, Juntamente com o Join nas tabelas de Product e Stock

SELECT 
    p.name AS product_name,
    SUM(ps.quantity) AS total_estoque
FROM 
    store.product p
INNER JOIN 
    store.product_stock ps 
    ON p.product_id = ps.product_id
GROUP BY 
    p.name
ORDER BY 
    total_estoque DESC;