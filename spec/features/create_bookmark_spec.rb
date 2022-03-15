feature 'UI Elements' do

  scenario 'should display UI elements' do
    visit '/create-bookmark'
    expect(page).to have_content 'Enter title:'
    expect(page).to have_content 'Enter URL:'
    expect(page).to have_field 'title'
    expect(page).to have_field 'url'
    expect(page).to have_button 'Save'
  end

end