require 'player'

describe Player do
  subject(:john) { Player.new('John') }
  subject(:mitch) { Player.new('Mitch') }

  describe '#name' do
    it 'returns the name' do
      expect(mitch.name).to eq 'Mitch'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(mitch.hitpoints).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'player takes damage and reduces their health' do 
      expect { john.receive_damage }.to change { john.hitpoints }.by(-10)
    end
  end
end

