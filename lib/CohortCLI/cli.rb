class CohortCLI::CLI
attr_accessor :comments

  def start 
    puts "Hello there!"
    puts "------------"
    puts "please enter the character's first name:"
    input1 = gets.strip.downcase
    puts "Please enter the character's last name:"
    input2 = gets.strip.downcase
    if (input1 == "quit" || input2 == "quit") 
      quit
    else 
      @data = CohortCLI::API.get_character(input1, input2)
      if @data == nil 
        start
      else 
      @objects = CohortCLI::Character.all 
      display_info
      end 
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
      if @character.comments != nil 
      puts "Comments:   #{@character.comments}"
      end 
      puts "-----------------------------------"
      puts "Would you like to comment on the character? (y/n)"
      input = gets.strip.downcase 
      if (input == "y" || input == "yes")
        puts "Please enter your comments"
        comment = gets
        @character.comments=(comment)
        display_info
      else 
        display_info 
      end 
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