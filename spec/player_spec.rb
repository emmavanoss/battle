require 'player'

describe Player do
  subject(:player_1) { Player.new('Odin') }

  it 'returns name when "name" is called' do
    expect(player_1.name).to eq 'Odin'
  end

  it 'returns hp when called' do
    expect(player_1.hp).to eq described_class::DEFAULT_HP
  end

  it 'reduces players hp' do
    expect { player_1.reduce_hp }.to change { player_1.hp }.by(-10)
  end
end
