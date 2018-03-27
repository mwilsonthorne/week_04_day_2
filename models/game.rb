class Game

def initialize(choice1, choice2)
  @choice1 = choice1
  @choice2 = choice2
end

def get_winner()
  if @choice1 == "rock" && @choice2 == "scissors"
    return "Rock Wins!"
  end

  if @choice1 == "scissors" && @choice2 == "rock"
    return "Rock Wins!"
  end

  if @choice1 == "rock" && @choice2 == "paper"
    return "Paper Wins!"
  end

  if @choice1 == "paper" && @choice2 == "rock"
      return "Paper Wins!"
  end

  if @choice1 == "paper" && @choice2 == "scissors"
    return "Scissors Wins!"
  end

  if @choice1 == "scissors" && @choice2 == "paper"
      return "Scissors Wins!"
  end

  if @choice1 == "paper" && @choice2 == "paper"
    return "Try Again!"
  end

  if @choice1 == "rock" && @choice2 == "rock"
    return "Try Again!"
  end
  
  if @choice1 == "scissors" && @choice2 == "scissors"
    return "Try Again!"
  end
end

end
