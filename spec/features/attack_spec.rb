feature 'Attack player' do
  scenario 'Attacking player 2' do
    sign_in_and_play
    click_link
    expect(page).to have_content 'John attacked Mitch'
  end
end