require'minitest/autorun'
require_relative('../models/game.rb')

class TestGame < Minitest::Test

def setup
 @game1 = Game.new("paper", "scissors")
 @game2 = Game.new("rock", "scissors")
 @game3 = Game.new("rock", "paper")
 @game4 = Game.new("paper", "paper")
 @game5 = Game.new("rock", "rock")
 @game6 = Game.new("scissors", "scissors")
end

def test_get_winner__scissors_beats_paper()
  assert_equal("Scissors Wins!", @game1.get_winner())
end

def test_get_winner__rock_beats_scissors()
  assert_equal("Rock Wins!", @game2.get_winner())
end

def test_get_winner__paper_beats_rock()
  assert_equal("Paper Wins!", @game3.get_winner())
end

def test_get_winner__paper_paper()
  assert_equal("Try Again!", @game4.get_winner())
end

def test_get_winner__rock_rock()
  assert_equal("Try Again!", @game5.get_winner())
end

def test_get_winner__scissors_scissors()
  assert_equal("Try Again!", @game6.get_winner())
end

end
