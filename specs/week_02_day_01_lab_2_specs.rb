require('minitest/autorun')
require('minitest/reporters')
require_relative('../week_02_day_01_lab_2')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Buchanan Bulls",
      ["Michael", "Scottie", "Dennis"],
      "Keith Campbell", 0)
    assert_equal("Buchanan Bulls", team.team_name)
  end

  def test_add_player_to_team
    team = SportsTeam.new("Buchanan Bulls",
      ["Michael", "Scottie", "Dennis"],"Keith Campbell",0)
    assert_equal(4,team.add_players_to_team.count)
  end

  def test_check_players_name
    team = SportsTeam.new("Buchanan Bulls",
      ["Michael", "Scottie", "Dennis"],"Keith Campbell",0)
      players_name = "Michael"
    assert_equal(true,team.check_players_name(players_name))
  end

  def test_has_team_won_yes
    team = SportsTeam.new("Buchanan Bulls",
      ["Michael", "Scottie", "Dennis"],"Keith Campbell",0)
      has_team_won = "yes"
    assert_equal(3,team.has_team_won(has_team_won))

  end

  def test_has_team_won_no
    team = SportsTeam.new("Buchanan Bulls",
      ["Michael", "Scottie", "Dennis"],"Keith Campbell",0)
      has_team_won = "no"
    assert_equal(0,team.has_team_won(has_team_won))
  end

end
