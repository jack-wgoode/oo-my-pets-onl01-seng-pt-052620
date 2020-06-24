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
  
  def feed_cats 
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def dogs
     Dog.all.select do |dog|
     dog.owner == self
    end
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
  end
  
  def walk_dogs 
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
   
   def sell_pets
     dogs.each do |dog|
       dog.mood = "nervous"
       dog.owner = nil
     end
     
     cats.each do |cat| 
       cat.mood = "nervous"
       cat.owner = nil
     end
   end
   
   def list_pets
    print  "I have #{@owner.dogs.count}dog(s), and #{@owner.cats.count} cat(s)."   
  end
   
   
end