--Из таблицы couriers отберите id всех курьеров, родившихся в период с 1990 по 1995 год включительно.
--Результат отсортируйте по возрастанию id курьера.
--Поле в результирующей таблице: courier_id
SELECT courier_id
FROM   couriers
WHERE  date_part('year', birth_date) >= 1990
   and date_part('year', birth_date) <= 1995
ORDER BY courier_id
