# Imports
require_relative 'Player_One.rb'

require_relative 'Player_Two.rb'

# Questions class
class Questions
  attr_accessor :question, :answer, :value1, :value2
end

i = 0

while i <= 11
 if i == 11
  puts "P1 #{Player_1.value}/3 vs P2 #{Player_2.value}/3" 
  puts "The match is a draw, try again!"
  break
 end 
 if i.modulo(2) == 0

   question_num = "quesiton_#{i}"

# Instance of Class
   question_num = Questions.new()
   question_num.value1 = rand(0..100)
   question_num.value2 = rand(0..100)
   question_num.question = "What is #{question_num.value1} + #{question_num.value2}"
   question_num.answer = question_num.value1 + question_num.value2

# Game 
   puts "#{Player_1.name}: #{question_num.question}"
   answer1 = gets.chomp.to_i
    if answer1 == question_num.answer
      puts "#{Player_1.name}: Yes, that's correct!"
    else 
      puts "#{Player_1.name}: Are you serious, No!"
      Player_1.value = Player_1.value - 1
    end 
    if Player_1.value == 0
      puts "--- Game Over ---"
      puts "#{Player_2.name} wins with a score of #{Player_2.value}/3"
      i += 1
      break
    else 
      puts "P1 #{Player_1.value}/3 vs P2 #{Player_2.value}/3" 
      puts "---- New Turn ----"
      i += 1
    end 

# Player 2
  elsif i.modulo(2) != 0
    question_num = "quesiton_#{i}"

# Instance of Class
   question_num = Questions.new()
   question_num.value1 = rand(0..100)
   question_num.value2 = rand(0..100)
   question_num.question = "What is #{question_num.value1} + #{question_num.value2}"
   question_num.answer = question_num.value1 + question_num.value2

# Game 
   puts "#{Player_2.name}: #{question_num.question}"
   answer1 = gets.chomp.to_i
  if answer1 == question_num.answer
    puts "#{Player_2.name}: Yes, that's correct!"
  else 
    puts "#{Player_2.name}: Are you serious, No!"
    Player_2.value = Player_2.value - 1
  end 
  if Player_2.value == 0
    puts "--- Game Over ---"
    puts "#{Player_1.name} wins with a score of #{Player_1.value}/3"
    i += 1
    break
  else 
    puts "P1 #{Player_1.value}/3 vs P2 #{Player_2.value}/3" 
    puts "---- New Turn ----"
    i += 1
      end
    end
  end

