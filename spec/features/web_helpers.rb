def sign_in_and_play
  visit '/'
  fill_in('player_1_name', with: 'Odin')
  fill_in('player_2_name', with: 'Ralph')
  click_button 'Submit'
end