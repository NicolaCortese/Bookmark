require 'bookmark.rb'

describe Bookmark do

  before do
    @google = Bookmark.new("google", "https://www.google.com")
  end

  it 'should initialise with a title attribute' do
    expect(@google.title).to eq "google"
  end

  it 'should initialise with a URL attribute' do
    expect(@google.url).to eq "https://www.google.com"
  end

end

describe 'Bookmark List' do

  it 'should return a list of bookmarks' do
    load_bookmarks
    bookmarks = Bookmark.all
    expect(bookmarks).to include("http://www.google.com")
    expect(bookmarks).to include("http://www.makersacademy.com")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
  end

end