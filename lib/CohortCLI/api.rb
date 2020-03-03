class CohortCLI::API



  def self.get_character(input)
    @character_hash = HTTParty.get("https://anapioficeandfire.com/api/characters/#{input}")
   
 
   character_obj = {
      name: @character_hash["name"],
      gender: @character_hash["gender"],
      culture: @character_hash["culture"],
      titles: @character_hash["titles"],
      playedBy: @character_hash["playedBy"]
    }
    
   CohortCLI::Character.new(character_obj)
  end 



end 