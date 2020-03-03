class CohortCLI::API



  def self.get_character
    @character_hash = HTTParty.get("https://www.breakingbadapi.com/api/characters?name=Walter+White") 
    hash = {} 
    hash = @character_hash[0]
       
  

    # CohortCLI::Character.new(character_obj)
  end 



end 