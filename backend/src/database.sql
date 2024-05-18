-- users table
CREATE TABLE users (
    user_id serial primary key,
    username varchar(255) unique not null,
    email varchar(255) unique not null,
    password varchar(255) not null,
    created_at date default current_date
);
-- hospitals table
CREATE TABLE hospitals (
    hospital_id serial primary key,
    hospital_name varchar(255) unique not null,
    hospital_location varchar(255) not null,
    hospital_rating float not null,
    estimated_waiting_time varchar(255) not null,
    created_at date default current_date
);
-- treatmentplan table
CREATE TABLE treatmentplan (
    treatmentplan_id serial primary key,
    user_id INT REFERENCES users(user_id),
    medicine_name varchar(255)  not null,
    medicine_quantity varchar(255) not null,
    medicine_time varchar(255) not null,
    created_at date default current_date
);
-- reviews table
CREATE TABLE reviews (
    review_id serial primary key,
    hospital_id INT REFERENCES hospitals(hospital_id),
    rating INT not null,
    hospital_feedback varchar(255) not null,
    created_at date default current_date
);