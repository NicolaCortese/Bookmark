
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

feature 'Once a new bookmark is created' do

  scenario 'create a new bookmark' do
    visit('/bookmarks')
    click_on '+New'
    fill_in 'title', with: 'BBC'
    fill_in 'url', with: 'http://www.bbc.co.uk'
    click_on 'Save'
    expect(page).to have_content 'http://www.bbc.co.uk'
  end

  scenario 'create a bookmark with no url' do
    visit('/bookmarks')
    click_on '+New'
    fill_in 'title', with: 'BBC'
    click_on 'Save'
    expect(page).to have_content 'NO URL'
  end

end