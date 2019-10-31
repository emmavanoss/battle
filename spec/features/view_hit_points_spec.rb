feature 'view hit points' do
  scenario 'show player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content('Odin: 100HP')
  end

  scenario 'show player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Ralph: 100HP')
  end
end