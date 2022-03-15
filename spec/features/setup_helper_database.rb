require 'pg'

def setup_database
  database = PG.connect( dbname: 'bookmark_manager_test')
  database.exec( 'TRUNCATE TABLE bookmarks;')
  
end