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
  end 
  
  
  # deal with inputs (loop to keep asking to get new info)
  # Ex. while input != "exit" do 
  # display a list of something, or give examples of what we expect as input 
  # get user input 
  # depending on what we get, do something 
  # condition to check input for good value 
  # else tell them try again 
  
  def quit 
    puts "goodbye"
  end 
 

end 