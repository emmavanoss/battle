require 'player'

describe Player do
  subject(:player_1) { Player.new('Odin') }

  it 'returns name when "name" is called' do
    expect(player_1.name).to eq 'Odin'
  end
end