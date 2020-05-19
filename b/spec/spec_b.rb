require('minitest/autorun')
require('minitest/reporters')
require_relative('../b.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < Minitest::Test
    
 def test_get_team_name
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul")
    assert_equal("Rangers", team.team_name())
 end

 def test_get_team_players
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul")
    assert_equal(["Tam", "Lewis", "Mike"], team.players())
 end

 def test_get_team_coach
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul")
    assert_equal("Paul", team.coach())
 end

 def test_update_team_coach
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul")
    team.coach = "Pete"
    assert_equal("Pete", team.coach())
 end

 def test_add_player_to_team_array
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul")
    team.add_player("Tim")
    assert_equal(["Tam", "Lewis", "Mike", "Tim"], team.players())
 end

 def test_check_if_name_is_in_team_array__true
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul")
    is_in_array= team.contains_player("Tam")
    assert_equal(is_in_array, true)
 end

 def test_check_if_name_is_in_team_array__false
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul")
    is_in_array= team.contains_player("Tom")
    assert_equal(is_in_array, false)
 end

 def test_get_points_from_team
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul", 3)
    assert_equal(3, team.points)
 end

 def test_add_points_to_team__win
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul", 0)
    team.update_points("win")
    assert_equal(1, team.points)
 end

 def test_add_points_to_team__lose
    team = Team.new("Rangers", ["Tam", "Lewis", "Mike"], "Paul", 0)
    team.update_points("lose")
    assert_equal(-1, team.points)
 end    

end