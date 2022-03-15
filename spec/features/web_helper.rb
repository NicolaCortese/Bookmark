require 'pg'
require 'database_connection'
require './lib/bookmark'

def load_bookmarks
  database = DatabaseConnection.connect
  Bookmark.create("Google","http://www.google.com")
  Bookmark.create("Makers","http://www.makersacademy.com")
  Bookmark.create("Destroyallsoftware","http://www.destroyallsoftware.com")
end