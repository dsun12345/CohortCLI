class CohortCLI::CLI

   def start 
    puts "Hello there!"
    puts "------------"
    puts "please enter a number from from 1-2138 to learn a random character's detail:"
    input = gets.strip.downcase
    @data = CohortCLI::API.get_character(input)
    @objects = CohortCLI::Character.all 
    display_info 
  end 
  
  def display_info 
    puts "Here are your random characters:"
    puts "--------------------------------"
    @objects.each.with_index(1) {|character, index| puts "#{index}. #{character.titles}"}
    
    puts "please select a index number to learn more"
    input = gets.strip
    @character = @objects[input.to_i - 1]
    if(@character)
      puts "#{@character.name}"
      puts "#{@character.gender}"
      puts "#{@character.culture}"
      puts "#{@character.titles}"
      puts "#{@character.playedBy}"
    elsif (input == "quit")
      quit 
    else 
      puts "Oops"
      display_info
    end 
    
  end 

  def quit 
    puts "goodbye"
  end 
 

end 