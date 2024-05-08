-- 1) Узнать среднюю цену билета при условии, что цена билета > 100
select avg(price) from tickets 
where tickets.price > 100;

-- 2) Узнать среднее число вместимости в версионной таблице ряда, где номер ряда < 5
select avg(capacity) from hall_row 
where hall_row.number_row < 5;

-- 3) Самая раняя запись в версионной таблице
select * from hall_row
order by date_start
limit 1;

-- 4) Данные из версионной таблицы, где длительность актуальности информации занятия ряда < 30 дней
select * from hall_row
where date_end - date_start < 30
limit 5;

-- 5) Вывести названия фильмов, время проката которых > 2:00:00 (Названия выводятся без повторений)
select distinct name_film from films
JOIN screening ON films.id = screening.film_id
where screening.time_film > '2:00:00';

-- 6) Узнать названия кинозалов, где показывался фильм с id = 1 - "1+1"
select distinct hall_name from hall
JOIN screening on hall_id = screening.hall_id
where screening.film_id = 1;

-- 7) Узнать вместимость самых заполненых рядов за всё время в версионной таблице
select capacity from hall_row 
order by capacity desc
limit 15;

-- 8) Узнать количество показов фильма 'Зеленая миля'
select COUNT(film_id) from screening
join films on screening.film_id = films.id
where name_film = 'Зеленая миля';

-- 9) Увидить описания фильмов, продолжительность которых меньше 3 часов и описание не null
select distinct description from films
JOIN screening ON films.id = screening.film_id
where (screening.time_film < '3:00:00') and (description is not null);

-- 10) Сгрупировать по номеру ряда(Нас интересуют группы, имеющие как минимум 5 представителей) в билите и увидить их средний цениик билета
SELECT row_ticket, AVG(price) as avg_price FROM tickets
GROUP BY row_ticket
HAVING COUNT(*) >= 5;
