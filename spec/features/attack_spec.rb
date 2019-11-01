feature 'attack player 2' do
  scenario 'receive confirmation of attack' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('KAPOW')
  end

  scenario 'OK button returns to /play2' do
    sign_in_and_play
    attack_and_ok
    expect(page).to have_current_path('/play2')
  end

  scenario 'player 2 hp reduced by 10' do
    sign_in_and_play
    attack_and_ok
    expect(page).to have_content('90HP')
  end
end
