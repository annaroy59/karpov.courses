--Повторите запрос из предыдущего задания, но теперь колонки name и price переименуйте соответственно в product_name и product_price.
--Поля в результирующей таблице: product_name, product_price
SELECT name as product_name,
       price as product_price
FROM   products
ORDER BY price desc limit 5
