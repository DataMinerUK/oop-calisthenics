require 'team'

describe Team do
  it 'is valid if is a minimum of 7 players' do
    team = Team.new
    6.times { team.add_player }
    expect(team).not_to be_valid
  end

end
