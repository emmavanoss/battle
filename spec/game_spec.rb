require 'game'

describe Game do
  let(:player_1) { double :Player }
  let(:player_2) { double :Player }
  let(:game) { Game.new(player_1, player_2) }

  it 'accepts two players on initialization' do
    expect { Game.new(player_1, player_2) }.not_to raise_error
  end

  it "reduces player's HP when 'attack' is called" do
    expect(player_1).to receive(:reduce_hp)
    game.attack(player_1)
  end
end