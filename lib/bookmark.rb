require 'pg'

class Bookmark

  attr_reader :title, :url
  
  def initialize(title, url)
    @title = title
    @url = url

  end
  
  def self.all
  
    database = PG.connect( dbname: 'bookmark_manager')
    result = database.exec( "SELECT * FROM bookmarks")
    result.map { |row| row['url'] }
      
  end


end