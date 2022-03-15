require 'pg'
require_relative 'database_connection.rb'

class Bookmark

  attr_reader :id, :title, :url
  
  def initialize(id, title, url)
    @id = id
    @title = title
    @url = url
  end
  
  def self.all
    database = DatabaseConnection.connect
    result = database.exec( "SELECT * FROM bookmarks")
    result.map { |row| Bookmark.new(row['id'],row['title'],row['url']) }
  end

  def self.create(title, url)
    url = "NO URL" if url == ""
    title = "Untitled" if title == ""
    database = DatabaseConnection.connect
    database.exec( "INSERT INTO bookmarks(title, url) VALUES ('#{title}', '#{url}');" )
  end

end