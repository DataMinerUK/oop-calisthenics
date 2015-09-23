class Team

  def initialize
    @team = []
  end

  def add_player player
    @team << player
  end

  def valid?
    @team.count > 6 && @team.count < 11
  end

end
