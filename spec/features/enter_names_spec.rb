feature 'Personalisation' do
  scenario 'Enter and display player names' do
    sign_in_and_play
    expect(page).to have_content("Odin", "Ralph")
  end
end