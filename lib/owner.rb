class Owner
    
   attr_reader :species, :name
   
   @@all = []
   
   def initialize(name)
     @species = "human"
     @name = name
     @@all << self
   end
   
   def say_species
     "I am a #{self.species}."
   end
   
   def self.all 
       @@all
   end
   
   def self.count
      self.all.count
   end
   
   def self.reset_all
     self.all.clear
   end
   
   def cats
     Cats.all.select do |cat|
     cat.owner == self.name
    end
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def buy_dog 
    
  end
   
end