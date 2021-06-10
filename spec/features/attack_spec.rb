feature 'Attacking' do
  scenario 'Attacking player 2 hp by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Mitch: 60HP'
    expect(page).to have_content 'Mitch: 50HP'
  end
end