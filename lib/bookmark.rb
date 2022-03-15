require 'pg'
require 'database_connection'

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


end