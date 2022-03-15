require 'pg'
require 'database_connection'

def load_bookmarks
  database = DatabaseConnection.connect
  database.exec("INSERT INTO bookmarks(url) 
  VALUES ('http://www.google.com'), 
  ('http://www.makersacademy.com'), 
  ('http://www.destroyallsoftware.com');")
end