class CohortCLI::CLI

  def start 
    puts "Hello there!"
    puts "------------"
    puts "please enter the character's first name:"
    input1 = gets.strip.downcase
    puts "Please enter the character's last name:"
    input2 = gets.strip.downcase
    if (input1 == quit || input2 == quit)
      quit
    else 
      @data = CohortCLI::API.get_character(input1, input2)
      @objects = CohortCLI::Character.all 
      display_info 
    end 
  end 
  
  def display_info 
    puts "Here are your characters:"
    puts "-------------------------"
    @objects.each.with_index(1) {|character, index| puts "#{index}. #{character.name}"}
    puts "please select a index number to learn more"
    input = gets.strip.downcase
    if(input.to_i > 0)
      @character = @objects[input.to_i - 1]
      puts "Name:       #{@character.name}"
      puts "Birthday:   #{@character.birthday}"
      puts "Occupation: #{@character.occupation}"
      puts "Status:     #{@character.status}"
      puts "Nickname:   #{@character.nickname}"
      puts "Portrayed:  #{@character.portrayed}"
      display_info
    elsif (input == "quit")
      quit 
    elsif (input == "menu")
      start 
    else 
      puts "invalid input please try again!"
      display_info
    end 
    
  end 

  def quit 
    puts "goodbye"
  end 
 

end 