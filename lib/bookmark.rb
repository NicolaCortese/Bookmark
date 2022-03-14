class Bookmark

  attr_reader :title, :url

  def initialize(title, url)
    @title = title
    @url = url
  end

  def self.all
    [ "https://www.google.com",
      "https://www.makers.tech",
      "https://www.netflix.com"
    ]
  end

end