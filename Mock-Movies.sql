create table customer (
	customer_id SERIAL primary key,
	frist_name VARCHAR(100),
	last_name VARCHAR(100)
);


create table consesssion(
	items SERIAL PRIMARY key,
	amount NUMERIC(5,2),
	product_name VARCHAR(100)
);

create table movies(
	movie_id SERIAL primary key,
	movie_year Integer,
	movie_rating Integer
);

-- ticket table
create table tickets(
	ticket_id SERIAL primary key,
	movie_date date default current_date,
	seat_number INTEGER,
	movie_id INTEGER not null,
	foreign key(movie_id) references movies(movie_id)
);


create table order_(
	order_id Serial primary key,
	sub_total NUMERIC(8,2),
	total_total NUMERIC(10,2),
	ticket_id INTEGER not null,
	foreign key (ticket_id) references tickets(ticket_id),
	items SERIAL not null,
	foreign key (items) references consesssion(items)
)

	

