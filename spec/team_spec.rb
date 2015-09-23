require 'team'

describe Team do

  let(:male_player)    {double :male_player, gender: :male}
  let(:female_player) { double :female_player, gender: :female}

  context 'validate numbers' do

    it 'is not valid if has less than 7 players' do
      add_players_to subject, 6
      expect(subject).not_to be_valid
    end

    it 'is not valid if has more than 10 players' do
      11.times { subject.add_player male_player }
      expect(subject).not_to be_valid
    end

    it 'is valid if has 8 players' do
      8.times { subject.add_player male_player }
      expect(subject).to be_valid
    end

  end

  context 'validate genders' do

    it 'is minimum of any one gender' do
      1.times { subject.add_player male_player}
      9.times { subject.add_player female_player}

      expect(subject).to_not be_valid
    end
  end

  def add_players_to team, quantity
    (quantity / 2).times do
      team.add male_player
      team.add female_player
    end
    team
  end

end
