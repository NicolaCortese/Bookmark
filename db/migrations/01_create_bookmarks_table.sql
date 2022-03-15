CREATE DATABASE bookmark_manager;
\c bookmark_manager;
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, title VARCHAR(120), url VARCHAR(60));