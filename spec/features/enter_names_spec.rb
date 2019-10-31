feature 'Personalisation' do
  scenario 'Enter and display player names' do
    visit('/')
    fill_in('player_1_name', with: 'Odin')
    fill_in('player_2_name', with: 'Ralph')
    click_button 'Submit'
    expect(page).to have_content("Odin", "Ralph")
  end
end