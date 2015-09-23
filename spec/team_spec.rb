require 'team'

describe Team do
  it 'is not valid if has less than 7 players' do
    6.times { subject.add_player :player }
    expect(subject).not_to be_valid
  end

  it 'is not valid if has more than 10 players' do
    11.times { subject.add_player :player  }
    expect(subject).not_to be_valid
  end

  it 'is valid if has 8 players' do
    8.times { subject.add_player :player }
    expect(subject).to be_valid
  end

end
