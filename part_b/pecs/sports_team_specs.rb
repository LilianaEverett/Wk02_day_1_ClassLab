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


end
