class RpsController < ApplicationController
  def index
    render({ :template => "templates/index" })
  end

  def rock
    play("rock")
    render({ :template => "templates/rock" })
  end

  def paper
    play("paper")
    render({ :template => "templates/paper" })
  end

  def scissors
    play("scissors")
    render({ :template => "templates/scissors" })
  end

  private

  def play(user)
    @computer = %w[rock paper scissors].sample

    @result = case user
    when "rock"
      if @computer == "rock"
        "tied"
      elsif @computer == "paper"
        "lost"
      else
        "won"
      end

    when "paper"
      if @computer == "rock"
        "won"
      elsif @computer == "paper"
        "tied"
      else
        "lost"
      end

    when "scissors"
      if @computer == "rock"
        "lost"
      elsif @computer == "paper"
        "won"
      else
        "tied"
      end
    end
  end
end
