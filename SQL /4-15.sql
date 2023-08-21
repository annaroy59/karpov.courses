--Из таблицы user_actions получите информацию о всех отменах заказов, которые пользователи совершали в течение августа 2022 года по средам с 12:00 до 15:59.
--Результат отсортируйте по убыванию id отменённых заказов.
--Поля в результирующей таблице: user_id, order_id, action, time
--Пояснение:
--Будьте внимательны при работе с датами и временем.
--Для решения задачи вам может пригодиться функция DATE_PART. Для получения дня недели можно указать аргумент 'dow' («day of week»):
--SELECT DATE_PART('dow', DATE '2022-12-31')
--Результат: 6.00
--В PostgreSQL дни недели считаются с воскресенья (0) до субботы (6).
SELECT user_id,
       order_id,
       action,
       time
FROM   user_actions
WHERE  action = 'cancel_order'
   and date_part('month', time) = 08
   and date_part('year', time) = 2022
   and date_part('dow', time) = 3
   and date_part('hour', time) >= 12
   and date_part('hour', time) < 16
ORDER BY order_id desc
