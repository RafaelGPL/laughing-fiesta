
-- SQL statements

-- In general there are two varieties of SQL statements
--  1. Commands
--  2. Queries

CREATE TABLE IF NOT EXISTS user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 0
);

-- Don't forget the semi-colon!

-- Dummy data:

-- CRUD(S)
-- Create
-- Read
-- Update
-- Delete
-- Scan

 -- Create
INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES
(
    "Rafael",
    "GPL",
    "DIY stuff"
),
(
    "Bob",
    "Martin",
    "Writing books"
),
(
    "John",
    "Doe",
    "Playing golf and watching TV"
);

-- Read
SELECT * FROM user WHERE id=1;

-- Scan *
SELECT * FROM user;

-- Update
UPDATE user SET
    first_name="Tom",
    last_name="Smith",
    hobbies="Watching movies and listening to music"
WHERE id=1;

-- Delete
DELETE FROM user WHERE id = 1;