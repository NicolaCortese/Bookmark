CREATE DATABASE bookmark_manager_test;
\c bookmark_manager_test;
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, title VARCHAR(120), url VARCHAR(60));