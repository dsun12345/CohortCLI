class CohortCLI::API 

  def self.get_pokemon
    @pokemon_hash = HTTParty.get("https://pokeapi.co/api/v2/pokemon/ditto/")
    binding.pry 
  end 



end 