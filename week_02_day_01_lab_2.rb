class SportsTeam

  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach, points)

    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_players_to_team
    return players.push("Charles")
  end

  def check_players_name(players_name)
    return players.include?(players_name)
  end

  def has_team_won(outcome)
    if outcome == "yes"
      return @points = 3
    elsif outcome == "no"
      return @points = 1
    end 
  end
end
