-- Drop and recreate Widgets table (Example)

DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE orders (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id),
  created_date TIMESTAMP NOT NULL DEFAULT Now(),
  is_paid BOOLEAN NOT NULL DEFAULT FALSE,
  is_notified BOOLEAN NOT NULL DEFAULT FALSE,
  is_ready BOOLEAN NOT NULL DEFAULT FALSE,
  pickup_time TIMESTAMP
);
