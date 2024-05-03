CREATE TABLE Films (
	id BIGINT PRIMARY KEY NOT NULL,
	name_film VARCHAR(128) NOT NULL UNIQUE,
	description VARCHAR
);

CREATE TABLE Hall (
	id INT PRIMARY KEY NOT NULL,
	hall_name VARCHAR(64) NOT NULL
);

CREATE TABLE Hall_Row(
	id INT PRIMARY KEY NOT NULL,
	number_row INT NOT NULL,
	capacity INT NOT NULL,
	date_start TIME NOT NULL, 
	date_end TIME NOT NULL,
	hall_id BIGINT NOT NULL,
	CONSTRAINT hall_row_fk FOREIGN KEY (hall_id) REFERENCES hall (id),
	CHECK (date_start <= date_end)
);

CREATE TABLE Screening (
	id BIGINT PRIMARY KEY NOT NULL,
	time_film TIME NOT NULL,
	film_id BIGINT NOT NULL,
	hall_id BIGINT NOT NULL,
	CONSTRAINT hall_id_fk FOREIGN KEY (hall_id) REFERENCES hall (id),
	CONSTRAINT film_id_fk FOREIGN KEY (film_id) REFERENCES films (id)
	
);

CREATE TABLE Tickets (
	id BIGINT PRIMARY KEY NOT NULL,
	id_screening BIGINT NOT NULL,
	row_ticket INT NOT NULL,
	seats INT NOT NULL,
	price INT NOT NULL,
	CONSTRAINT id_screening_fk FOREIGN KEY (id_screening) REFERENCES screening (id)
);