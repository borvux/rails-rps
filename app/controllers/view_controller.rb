class ViewController < ApplicationController
  moves = ["rock", "paper", "scissors"]

  def homepage
    render({ :template => "templates/homepage" })
  end

  def rock
    @computer_move = moves.sample
    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template => "templates/rock" })
  end

  def paper
    @computer_move = moves.sample
    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end
    render({ :template => "templates/paper" })
  end

  def scissors
    @computer_move = moves.sample
    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end
    render({ :template => "templates/scissors" })
  end
end
