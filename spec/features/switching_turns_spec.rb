feature 'switching turns' do
  scenario 'players take turns' do
    sign_in_and_play
    attack_and_ok
    click_button('Attack!')
    expect(page).to have_content('BAM')
  end

  scenario 'OK button returns to /play' do
    sign_in_and_play
    attack_and_ok
    attack_and_ok
    expect(page).to have_current_path('/play')
  end
end