feature 'Enter names' do
  scenario 'Expect player to fill out their name' do
    sign_in_and_play
    save_and_open_page
    # will save the web page and open the browser to display it

    expect(page).to have_content 'John vs. Mitch'
  end
end