require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  post '/bookmarks' do
    Bookmark.create(params[:title], params[:url])
    redirect '/bookmarks'
  end

  get '/create-bookmark' do
    erb :create_bookmark
  end

  run! if app_file == $0
end