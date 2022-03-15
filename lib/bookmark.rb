require 'pg'
require_relative 'database_connection.rb'

class Bookmark

  attr_reader :title, :url
  
  def initialize(title, url)
    @title = title
    @url = url
  end
  
  def self.all
    database = DatabaseConnection.connect
    result = database.exec( "SELECT * FROM bookmarks")
    result.map { |row| row['url'] }
  end

  def self.create(title = "Untitled", url)
    url = "NO URL" if url == ""
    database = DatabaseConnection.connect
    database.exec( "INSERT INTO bookmarks(url) VALUES ('#{url}');" )
  end

end