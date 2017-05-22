

@original = ["I don't know", "Yes", "No", "Maybe"]
@response = @original.clone

def menu
  puts
  puts "Select an option:
        1. Ask me a question
        2. Create new answers to Magic Ball
        3. Delete recently added answer
        4. Reset Magic Ball answers
        5. Print Magic 8 Ball Answers
        6. To exit"
         option = gets.chomp.to_i
  case (option)
    when 1
      ask_q
    when 2
      add_answer
    when 3
      delete_new
    when 4
      reset_ball
    when 5
      puts @response
      menu
    when 6
      puts
      puts "You can't handle the TRUTH!!!"
      exit
    else
      puts
      puts "The Magic 8 Ball can see you can't follow instructions. Try again!"
      menu
    end
end



def ask_q
  puts "Ask me a question"
  q_answer = gets.chomp
  if /in\scase\sof\semergency/.match(q_answer)
    puts
    puts "Pineapple!"
    menu
  elsif /father/.match(q_answer)
      puts
      puts "Luke I am your father! Join the Dark Side"
      menu
  else
     puts @response.sample
  end
  menu
end

def add_answer
  puts
  puts "Type in new answer: "
  new_answer = gets.chomp
  @response << new_answer
  menu
end

def delete_new
  @response.pop
  puts
  puts "Your answer was not worthy to stay in the 8 Ball."
  menu
end

def reset_ball
  @response = @original.clone
  puts "The Magic 8 Ball has been reset."
  menu
end

puts
puts "Welcome to the all knowing Magic 8 Ball!"
puts
puts "I have all your answers."
puts
menu
