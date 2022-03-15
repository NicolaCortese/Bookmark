require 'bookmark.rb'

describe Bookmark do

  before do
    @google = Bookmark.new("1","google", "https://www.google.com")
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
    expect(bookmarks).to include(Bookmark)
  end

end

describe 'Create a new bookmark' do

  # let(:google) { Bookmark.new("Google", "google.com") }

  it 'should respond to create' do
    expect(Bookmark).to respond_to(:create).with(2).arguments
  end

  it 'should create a new bookmark' do
    Bookmark.create("Instagram", "instagram.com")
    expect(Bookmark.all.last.url).to eq "instagram.com"
  end

  it 'should increase the count of listed bookmarks' do
  expect{Bookmark.create("Instagram", "instagram.com")}.to change { Bookmark.all.count}.from(0).to(1)
  end 
  
end