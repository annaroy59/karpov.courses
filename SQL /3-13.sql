--Вновь, как и в 3-12.sql, повысьте цену всех товаров на 5%, только теперь к колонке с новой ценой примените функцию ROUND.
--Выведите id и наименования товаров, их старую цену, а также новую цену с округлением.
--Новую цену округлите до одного знака после запятой, но тип данных не меняйте.
--Результат отсортируйте сначала по убыванию новой цены, затем по возрастанию id товара.
--Поля в результирующей таблице: product_id, name, old_price, new_price
SELECT product_id,
       name,
       price as old_price,
       round(price +((price / 100) * 5), 1) as new_price
FROM   products
ORDER BY new_price desc, product_id