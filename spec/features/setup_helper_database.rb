require 'pg'

def setup_database
  database = PG.connect( dbname: 'bookmark_manager_test')
  database.exec( 'DROP TABLE IF EXISTS bookmarks CASCADE;')
  database.exec( 'CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));')
end