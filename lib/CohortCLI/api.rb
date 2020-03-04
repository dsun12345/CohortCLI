class CohortCLI::API



  def self.get_character(input1, input2)
    @character_hash = HTTParty.get("https://www.breakingbadapi.com/api/characters?name=#{input1}+#{input2}") 
    hash = {} 
    hash = @character_hash[0]
       
    character_obj = {
      name: hash["name"],
      birthday: hash["birthday"],
      occupation: hash["occupation"],
      status: hash["status"],
      nickname: hash["nickname"],
      portrayed: hash["portrayed"]
    }


    CohortCLI::Character.new(character_obj)
  end 



end 