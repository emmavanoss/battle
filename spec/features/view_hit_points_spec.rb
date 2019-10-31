feature 'view hit points' do
  scenario 'show player 1 hit points' do
    visit '/'
    fill_in('player_1_name', with: 'Odin')
    fill_in('player_2_name', with: 'Ralph')
    click_button 'Submit'
    expect(page).to have_content('Odin: 100HP')
  end

  scenario 'show player 2 hit points' do
    visit '/'
    fill_in('player_1_name', with: 'Odin')
    fill_in('player_2_name', with: 'Ralph')
    click_button 'Submit'
    expect(page).to have_content('Ralph: 100HP')
  end
end