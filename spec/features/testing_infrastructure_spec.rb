  feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end

  scenario 'Expect player to fill out their name' do
    visit('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Mitch'
    click_button 'Submit'

    save_and_open_page # will save the web page and open the browser to display it

    expect(page).to have_content 'John vs. Mitch'
  end
end