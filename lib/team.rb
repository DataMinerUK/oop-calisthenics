class Team
  attr_reader :team
  def initialize
    @team = []
  end

  def add_player player
    team << player
  end

  def valid?
    has_correct_number? && has_correct_gender_ratio?
  end

  private

  def has_correct_number?
    team.count > 6 && team.count < 11
  end

  def has_correct_gender_ratio?
    all_genders = team.map { |player| player.gender}
    gender_numbers = Hash[all_genders.group_by {|gender| gender}.map {|k,v| [k,v.count]}].values
    gender_numbers.all? {|each_gender| each_gender > 1 }
  end

end
