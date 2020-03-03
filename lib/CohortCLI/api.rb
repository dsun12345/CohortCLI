class CohortCLI::API



  def self.get_weather
    @pokemon_hash = HTTParty.get("https://www.metaweather.com/api/location/search/?query=san")
    binding.pry 
    
  end 



end 