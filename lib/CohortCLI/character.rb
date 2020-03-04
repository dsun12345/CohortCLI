class CohortCLI::Character
attr_accessor :name, :birthday, :occupation, :status, :nickname, :portrayed
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
