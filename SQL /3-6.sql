--Используя операторы SELECT, FROM, ORDER BY и LIMIT, а также функцию LENGTH, определите товар с самым длинным названием в таблице products.
--Выведите его наименование, длину наименования в символах, а также цену этого товара. Колонку с длиной наименования в символах назовите name_length.
--Поля в результирующей таблице: name, name_length, price
--Пояснение:
--Обратите внимание, что в этой задаче вам придётся сортировать результирующую таблицу по расчётной колонке name_length, которой изначально не было в таблице products.
--Такая сортировка по новым колонкам возможна, поскольку это согласуется с порядком выполнения операторов в запросе: сначала выполняется выбор колонок и все преобразования над ними в операторе SELECT — и только потом производится сортировка по указанным в ORDER BY столбцам.
--То есть к моменту сортировки все расчётные поля уже существуют, а значит, их можно указывать в ORDER BY.
--Также обратите внимание, что мы дважды указываем колонку name в операторе SELECT: в первый раз просто обращаемся к ней по имени, а во второй — используем её в качестве аргумента функции LENGTH.
--В этом случае тоже нет никаких противоречий — мы можем выбирать колонку столько раз, сколько необходимо, причём для этого даже необязательно присваивать этим колонкам разные алиасы (база данных сама переименует дубликат колонки).
SELECT name,
       length(name) as name_length,
       price
FROM   products
ORDER BY name_length desc limit 1
