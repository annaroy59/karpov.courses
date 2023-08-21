--Из таблицы user_actions выведите всю информацию о действиях пользователей с id 170, 200 и 230 за период с 25 августа по 4 сентября 2022 года включительно.
--Результат отсортируйте по убыванию id заказа — то есть от самых поздних действий к самым первым.
--Поля в результирующей таблице: user_id, order_id, action, time
SELECT user_id,
       order_id,
       action,
       time
FROM   user_actions
WHERE  user_id in (170, 200, 230)
   and time::date between '2022-08-25'
   and '2022-09-04'
ORDER BY order_id desc
