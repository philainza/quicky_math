#Quicky Math is a math quiz game based on speed of mental math calculations. 

# Overview:

# - Compuer displays math problem
# - Addition, Subtraction, Multiply, Divide
# - Up to 4 digits
# - Timer (countdown or stopwatch)
# - Player inputs answer herself
# - Player earns or loses points
# - Points based on speed and accuracy
# - Game ends when all questions asked or time out?

# Nouns: player, clock, question, player_answer, acutal_answer, game, point, total, calculation, score
# Verbs: answer, calculate

# Player
# => 

# Clock

class Player
  attr_accessor :answer

  def get_answer
    @answer = gets.chomp.to_i
  end



  def score

  end
end

class Host
  def initialize

  end

  def ask(problem)
    print "#{problem}: "
  end

end

class Problem
  attr_accessor :term1, :term2, :operation, :solution

  def initialize(type)
    @term1 = case type
    when '2x2add'
      set_term(2)
    when '3x2add'
      set_term(3)
    when '3x3add'
      set_term(3)
    when '4x2add'
      set_term(4)
    when '4x3add'
      set_term(4)
    when '4x4add'
      set_term(4)
    end    

    @term2 = case type
    when '2x2add'
      set_term(2)
    when '3x2add'
      set_term(2)
    when '3x3add'
      set_term(3)
    when '4x2add'
      set_term(2)
    when '4x3add'
      set_term(3)
    when '4x4add'
      set_term(4)
    end

    @operation = :+
    @solution = [@term1, @term2].reduce(@operation)
  end

  def to_s
    "#{term1} #{operation} #{term2}"
  end

  def set_term(digits)
    case digits
    when 2
      rand(10..99)
    when 3
      rand(100..999)
    when 4
      rand(1000..9999)
    end
  end

  def set_operation
    :+
  end

  def create(type)



  end

  def calculate_answer
    
  end
end

class Clock
  def time

  end
end

class ScoreBoard


end

class Game
  attr_accessor :host, :player

  def initialize
    @host = Host.new
    @player = Player.new
  end

  def display_welcome_message
    puts "Welcome to Quicky Math!"
  end

  def display_goodbye_message
    puts "Thanks for playing Quicky Math!"
  end

  def display_score

  end

  def play_again?

  end

  def play
    display_welcome_message
    problem = Problem.new('2x2add')
    host.ask(problem)
    player_answer = player.get_answer
    solution = problem.solution

    if player_answer == solution
      puts "You win!"
    else
      puts "You lose!"
    end
  end
end

Game.new.play



















