-- ALCERA database schema

DROP TABLE IF EXISTS promotions;
DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS reservations;
DROP TABLE IF EXISTS menu_items;
DROP TABLE IF EXISTS admins;

CREATE TABLE admins (
  id            SERIAL PRIMARY KEY,
  username      VARCHAR(50)  NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at    TIMESTAMP    NOT NULL DEFAULT NOW()
);

CREATE TABLE menu_items (
  id           SERIAL PRIMARY KEY,
  name         VARCHAR(100) NOT NULL,
  description  TEXT,
  category     VARCHAR(30)  NOT NULL
               CHECK (category IN ('starters', 'main-courses', 'desserts', 'drinks')),
  price        NUMERIC(8, 2) NOT NULL CHECK (price >= 0),
  image_url    VARCHAR(255),
  is_available BOOLEAN   NOT NULL DEFAULT TRUE,
  created_at   TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE reservations (
  id               SERIAL PRIMARY KEY,
  customer_name    VARCHAR(100) NOT NULL,
  email            VARCHAR(150) NOT NULL,
  phone            VARCHAR(30)  NOT NULL,
  reservation_date DATE    NOT NULL,
  reservation_time TIME    NOT NULL,
  guests           INTEGER NOT NULL CHECK (guests BETWEEN 1 AND 20),
  special_requests TEXT,
  status           VARCHAR(20) NOT NULL DEFAULT 'pending'
                   CHECK (status IN ('pending', 'approved', 'rejected')),
  created_at       TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE messages (
  id            SERIAL PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  email         VARCHAR(150) NOT NULL,
  subject       VARCHAR(150) NOT NULL,
  content       TEXT         NOT NULL,
  created_at    TIMESTAMP    NOT NULL DEFAULT NOW()
);

CREATE TABLE promotions (
  id          SERIAL PRIMARY KEY,
  title       VARCHAR(100) NOT NULL,
  description TEXT,
  image_url   VARCHAR(255),
  valid_until DATE,
  created_at  TIMESTAMP NOT NULL DEFAULT NOW()
);