def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Mitch'
    click_button 'Submit'
end