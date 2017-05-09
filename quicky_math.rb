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
  attr_accessor :host, :player, :score

  def initialize
    @host = Host.new
    @player = Player.new
    @score = 0
  end

  def display_welcome_message
    puts "Welcome to Quicky Math!"
  end

  def display_goodbye_message
    puts "Score: #{score}"
    puts "Thanks for playing Quicky Math!"
  end

  def display_score

  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == 'n'
    return true if answer.downcase == 'y'
  end

  def play
    display_welcome_message

    loop do
      problem = Problem.new('2x2add')
      host.ask(problem)
      player_answer = player.get_answer
      solution = problem.solution

      if player_answer == solution
        self.score += 1
      else
        self.score -= 1
      end

      break unless play_again?
    end

    display_goodbye_message
  end
end

Game.new.play



















