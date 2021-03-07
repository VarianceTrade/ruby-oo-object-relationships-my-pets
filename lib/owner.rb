class Owner

  @@all = [] # ???

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def name
    @name
  end

  def species
    @species
  end

  def say_species
    #can say its species
    return "I am a #{@species}."
  end

  def cats
    array = []
    Cat.all.each do |cat|
      if cat.owner == self
        array << cat
      end
    end
    return array
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def dogs
    array = []
    Dog.all.each do |dog|
      if dog.owner == self
        array << dog
      end
    end
    return array
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def sell_pets
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end

    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
    return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  

  # CLASS METHODS

  def self.all
    return @@all # ???
  end

  def self.count
    return @@all.count # return the number of created owners
  end

  def self.reset_all
    # reset the created owners
    @@all = []
  end


end