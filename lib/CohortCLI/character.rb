class CohortCLI::Character
attr_accessor :name, :gender, :culture, :titles, :playedBy
  @@all = []

  def initialize(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
    save
  end 

  def self.all 
    @@all 
  end 
  
  def save
    @@all << self 
  end 
  
  
end 
