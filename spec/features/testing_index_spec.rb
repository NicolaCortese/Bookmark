feature 'homepage' do
  scenario 'displays hello world' do
    visit('/')
    expect(page).to have_content('Hello World')
  end
end