
feature 'Bookmark' do
  
  scenario 'view all bookmarks' do
    load_bookmarks
    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end

  scenario 'create a new bookmark' do
    visit('/bookmarks')
    expect(page).to have_button '+New'
  end

end
# scenario 'create a new bookmark' do
#   visit('/bookmarks')
#   click_on '+New'
#   fill_in 'title', with: 'BBC'
#   fill_in 'url', with: 'http://www.bbc.co.uk'
# end