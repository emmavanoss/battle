feature 'attack player 2' do
  scenario 'receive confirmation of attack' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('KAPOW')
  end

  scenario 'OK button returns to /play' do
    sign_in_and_play
    click_button('Attack!')
    click_button('OK')
    expect(page).to have_current_path('/play')
  end
end