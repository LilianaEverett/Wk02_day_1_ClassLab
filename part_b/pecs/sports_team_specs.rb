require('minitest/autorun')
require('minitest/rg')
# require('pry')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test


  def test_team_name
    sports_team = SportsTeam.new('Benfica', ['Rafa', 'Raul', 'Pizzi', 'Odisseias'], 'Bruno Nascimento')
    assert_equal('Benfica', sports_team.name())
  end

  def test_team_players
    sports_team = SportsTeam.new('Benfica', ['Rafa', 'Raul', 'Pizzi', 'Odisseias'], 'Bruno Nascimento')
    assert_equal(['Rafa', 'Raul', 'Pizzi', 'Odisseias'], sports_team.players())
  end

  def test_team_coach
    sports_team = SportsTeam.new('Benfica', ['Rafa', 'Raul', 'Pizzi', 'Odisseias'], 'Bruno Nascimento')
    assert_equal('Bruno Nascimento', sports_team.coach())
  end

  def test_set_new_coach
    sports_team = SportsTeam.new('Benfica', ['Rafa', 'Raul', 'Pizzi', 'Odisseias'], 'Bruno Nascimento')
    sports_team.new_coach('Rui Vitoria')
    assert_equal('Rui Vitoria', sports_team.coach())
  end

  def test_set_new_player
    sports_team = SportsTeam.new('Benfica', ['Rafa', 'Raul', 'Pizzi', 'Odisseias'], 'Bruno Nascimento')
    sports_team.new_player('Chiquinho')
    assert_equal(['Rafa', 'Raul', 'Pizzi', 'Odisseias', 'Chiquinho'], sports_team.players())
  end

  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.
  # hint: arr.at(0) #=> 1

  def test_team_player_in_team
     sports_team = SportsTeam.new('Benfica', ['Rafa', 'Raul', 'Pizzi', 'Odisseias'], 'Bruno Nascimento')
     assert_equal('Pizzi', sports_team.players.at(2))
  end

  # Add a points property into your class that starts at 0.

  # Create a method that takes in whether the team has won or lost and updates the points property for a win.

  def test_set_points__when_win
    sports_team = SportsTeam.new('Benfica', ['Rafa', 'Raul', 'Pizzi', 'Odisseias'], 'Bruno Nascimento', 0)
    sports_team.add_or_remove_points(2)
    assert_equal(2, sports_team.points())
  end

  def test_set_points__when_lost
    sports_team = SportsTeam.new('Benfica', ['Rafa', 'Raul', 'Pizzi', 'Odisseias'], 'Bruno Nascimento', 8)
    sports_team.add_or_remove_points(-2)
    assert_equal(6, sports_team.points())
  end





end
