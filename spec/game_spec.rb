require 'game'

describe Game do
  let(:game) { Game.new }
  let(:player_1) { double :Player, :reduce_hp => true }

  it "reduces player's HP when 'attack' is called" do
    expect(player_1).to receive(:reduce_hp)
    game.attack(player_1)
  end
end