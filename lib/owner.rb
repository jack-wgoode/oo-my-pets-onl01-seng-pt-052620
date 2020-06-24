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
     Cat.all.select do |cat|
     cat.owner == self
    end
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def dogs
     Dog.all.select do |dog|
     dog.owner == self
    end
  end
   
end