drop database if exists restaurant_reviews_db;

CREATE DATABASE restaurant_reviews_db;

\C restaurant_reviews_db;

CREATE TABLE img (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  title VARCHAR(255) NOT NULL
);

CREATE TABLE restaurants (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  phone_number VARCHAR(25),
  street_name VARCHAR(100) NOT NULL,
  street_number VARCHAR(10) NOT NULL,
  city VARCHAR(100),
  zip_code VARCHAR(100)
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL
);

CREATE TABLE ratings (
  id SERIAL PRIMARY KEY,
  stars INT NOT NULL CHECK (stars >= 1 AND stars <= 5)
);

CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  body TEXT NOT NULL,
  rating_id INTEGER NOT NULL REFERENCES ratings(id) ON DELETE CASCADE,
  restaurant_id INTEGER NOT NULL REFERENCES restaurants(id) ON DELETE CASCADE,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE user_reviews (
  user_id INTEGER NOT NULL REFERENCES users(id),
  restaurant_id INTEGER NOT NULL REFERENCES restaurants(id),
  review_id INTEGER NOT NULL REFERENCES reviews(id),
  PRIMARY KEY (user_id, restaurant_id, review_id)
);
