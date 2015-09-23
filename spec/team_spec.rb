require 'team'

describe Team do

  context 'validate numbers' do

    it 'is not valid if has less than 7 players' do
      6.times { subject.add_player :player }
      expect(subject).not_to be_valid
    end

    it 'is not valid if has more than 10 players' do
      11.times { subject.add_player :player }
      expect(subject).not_to be_valid
    end

    it 'is valid if has 8 players' do
      8.times { subject.add_player :player }
      expect(subject).to be_valid
    end
  end

  context 'validate genders' do
    let(:male_player)   {double :male_player, gender: :male}
    let(:female_player) {double :female_player, gender: :female}

    it 'is minimum of any one gender' do
      1.times { subject.add_player male_player}
      9.times { subject.add_player female_player}
    
      expect(subject).to_not be_valid
    end
  end



end
