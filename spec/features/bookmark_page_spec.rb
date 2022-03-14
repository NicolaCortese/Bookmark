feature 'Bookmark' do
  
  scenario 'view all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'bookmark 1'
  end

end