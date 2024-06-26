insert into hall (id, hall_name)
VALUES 
	(1, 'Первый'),
	(2, 'Второй'),
	(3, 'Третий'),
	(4, 'Четвертый'),
	(5, 'Пятый'),
	(6, 'Шестой'),
	(7, 'Седьмой'),
	(8, 'Восьмой'),
	(9, 'Девятый'),
	(10, 'Десятый');
	   
insert into Films (id, name_film, description)
VALUES 
	(1, '1+1', 'Аристократ на коляске нанимает в сиделки бывшего заключенного. Искрометная французская комедия'),
	(2, 'Зеленая миля', null),
	(3, 'Форрест Гамп', 'Форрест Гамп — не очень умный, но добрый и открытый парень — рассказывает случайным встречным историю своей необыкновенной жизни.'),  
	(4, 'Побег из Шоушенка', 'Бухгалтер Энди Дюфрейн обвинён в убийстве собственной жены и её любовника. Оказавшись в тюрьме под названием Шоушенк, он сталкивается с жестокостью и беззаконием, царящими по обе стороны решётки. Каждый, кто попадает в эти стены, становится их рабом до конца жизни.'),
	(5, 'Унесённые призраками', '«The tunnel led Chihiro to a mysterious town...»'),
	(6, 'Бойцовский клуб', 'Страховой работник разрушает рутину своей благополучной жизни.'),  
	(7, 'Интерстеллар', '«Следующий шаг человечества станет величайшим»'),
	(8, 'Криминальное чтиво', 'Двое бандитов Винсент Вега и Джулс Винфилд ведут философские беседы в перерывах между разборками и решением проблем с должниками криминального босса Марселласа Уоллеса.'),
	(9, 'Шрэк (2001)', 'Жил да был в сказочном государстве большой зеленый великан по имени Шрэк.'),
	(10,'Ходячий замок', 'Злая ведьма заточила 18-летнюю Софи в тело старухи. Девушка-бабушка бежит из города куда глаза глядят и встречает удивительный дом на ножках, где знакомится с могущественным волшебником Хаулом и демоном Кальцифером.'),   
	(11,'Властелин колец: Возвращение короля', '«There can be no triumph without loss. No victory without suffering. No freedom without sacrifice»'),   
	(12,'Леон', 'Осиротевшая девочка становится напарницей наемного убийцы.');
	   
INSERT INTO Hall_Row (id, number_row, capacity, date_start, date_end, hall_id)
VALUES
	(1, 1, 200, '2023-05-01', '2023-06-01', 1),
  	(2, 1, 250, '2023-06-01', '2023-06-03', 1),
  	(3, 3, 300, '2023-05-01', '2023-06-01', 1),
  	(4, 1, 250, '2023-05-01', '2023-06-01', 2),
  	(5, 2, 300, '2023-05-01', '2023-06-01', 2),
  	(6, 3, 200, '2023-05-01', '2023-06-01', 2),
	(7, 3, 150, '2023-03-01', '2023-04-01', 2),
	(8, 4, 200, '2023-05-15', '2023-06-10', 8),
	(9, 4, 180, '2023-06-10', '2023-06-28', 8),
	(10, 1, 200, '2023-01-01', '2023-02-01', 6),
	(11, 13, 150, '2023-02-01', '2023-04-02', 6),
	(12, 13, 200, '2023-04-02', '2023-04-05', 6),
	(13, 13, 150, '2023-04-05', '2023-04-06', 6),
	(14, 12, 150, '2023-04-05', '2023-04-06', 6),
	(15, 12, 250, '2023-06-05', '2023-07-06', 6),
	(16, 12, 150, '2023-07-06', '2023-08-06', 6),
	(17, 12, 150, '2023-08-07', '2023-09-06', 6),
	(18, 1, 280, '2023-04-05', '2023-04-06', 9),
	(19, 1, 150, '2023-04-07', '2023-06-06', 9),
	(20, 2, 150, '2023-04-05', '2023-04-09', 9),
	(21, 2, 165, '2023-04-10', '2023-04-25', 9),
	(22, 8, 165, '2023-04-10', '2023-04-25', 8),
	(23, 8, 555, '2023-04-25', '2023-04-30', 8),
	(24, 8, 165, '2023-04-30', '2023-05-25', 8),
	(25, 8, 154, '2023-05-26', '2023-06-01', 8),
	(26, 8, 176, '2023-06-02', '2023-06-25', 8),
	(27, 2, 143, '2023-04-05', '2023-04-25', 3),
	(28, 2, 123, '2023-04-26', '2023-05-25', 3),
	(29, 2, 144, '2023-05-26', '2023-06-25', 3),
	(30, 2, 155, '2023-06-26', '2023-08-23', 3);

INSERT INTO Screening (id, time_film, film_id, hall_id)
VALUES
	(1, '1:05:00', 1, 1),
	(2, '2:10:00', 1, 2),
	(3, '4:15:00', 1, 3),
	(4, '1:00:00', 2, 1),
	(5, '2:10:00', 2, 2),
	(6, '4:00:00', 2, 3),
	(7, '2:20:00', 3, 1),
	(8, '2:00:00', 3, 2),
	(9, '4:15:00', 3, 3),
	(10, '5:00:00', 4, 1),
	(11, '4:05:00', 4, 2),
	(12, '5:24:00', 4, 3),
	(13, '5:00:00', 5, 1),
	(14, '2:15:00', 5, 2),
	(15, '3:45:00', 5, 3);

INSERT INTO Tickets (id, id_screening, row_ticket, seats, price)
VALUES
	(1, 1, 1, 10, 450),
	(2, 4, 2, 10, 250),
	(3, 1, 3, 10, 300),
	(4, 2, 1, 10, 400),
	(5, 7, 2, 10, 500),
	(6, 2, 3, 10, 700),
	(7, 4, 1, 10, 540),
	(8, 3, 2, 10, 450),
	(9, 5, 3, 10, 300),
	(10, 6, 1, 10, 600),
	(11, 8, 2, 10, 500),
	(12, 9, 3, 10, 270),
	(13, 12, 1, 10, 340),
	(14, 14, 2, 10, 500),
	(15, 15, 3, 10, 600);


