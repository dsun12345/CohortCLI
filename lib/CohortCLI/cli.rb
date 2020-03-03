class CohortCLI::CLI
  
  #start should great user, maybe give description
  # get data from scraper/api file
  #create new custom objects
  # all inside start method 
  
   def start 
    puts "Hello there!"
    @data = CohortCLI::API.get_character
  end 
  
  # def display_info 
  #   puts "please make selection:"
  #   input = gets.strip.downcase
    
  #   if input == "actors"
  #     puts "===Actor List ==="
  #     puts "list of actors/objs"
  #     display_info 
  #   elsif input == "movies"
  #     puts "===Movies List ==="
  #     puts "list of movies/objs"
  #     display_info 
  #   else 
  #     quit 
  #   end 
  # end 
  
  
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