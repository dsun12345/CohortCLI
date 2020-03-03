class CohortCLI::API



  def self.get_character
    @character_hash = HTTParty.get("https://anapioficeandfire.com/api/characters/583")
    character_obj = {
      name: @character_hash["name"],
      gender: @character_hash["gender"],
      culture: @character_hash["culture"],
      titles: @character_hash["titles"],
      playedBy: @character_hash["playedBy"]
    }
    
    binding.pry 
  end 



end 