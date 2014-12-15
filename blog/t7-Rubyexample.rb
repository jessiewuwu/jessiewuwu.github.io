class Dog
  attr_reader :name, :breed, :weight, :new_location
  attr_writer :location

  def initialize(name, breed, weight, location)
    @name = name
    @breed = breed
    @weight = weight
    @location = location
  end

  def pick_up
    if (self.weight < 10)
      puts "You need to fatten this pup up."
    else
      puts "Wow this is a fat dog."
    end
  end

  def move(steps, puppy_pad) #puppypad's location should be an argument, you can pass the puppypad object an argument
    @steps = steps
    @new_location = @location + @steps
    @distance = puppy_pad.location - @new_location
    puts "You are " + @distance.to_s + " steps away from the puppy pad!"
    if @distance > 0
    puts "So close yet so far. By falling short of the puppy pad, " + self.name + " took advantage of the standstill and pooped in your hands. Game over, you have failed your dog and your carpet. :("

    elsif @distance < 0
      puts "What are you doing?! You took too many steps and " + self.name + " couldn't hold it anymore! Looks like you'll have to clean the mess off of your carpet. Game over, nice try."

    else
      puts "Yes! Congrats, you and " + self.name + " both made it in time for the puppy pad! Your dog is now a few poops closer to being potty trained!"
      #puppy_pad.has_poop = true
    end
  end
end

class PuppyPad #class variables are good for things like how many puppypads there are.
  attr_reader :location, :has_poop
  def initialize
    @location = 20
    @has_poop = false
  end

  def has_poop(dog)
    if dog.new_location == @location
      has_poop = true
      puts "This puppy pad has poo on it! So happy to see poo on it!"
    else
      has_poop = false
      puts "This puppy pad doesn't have poo on it. Where is the poo?"
    end
  end
end

#create pad1, dog1. dog1.move(pad1) or do1.move(pad1.location)
baby = Dog.new("Baby", "Pekingese", 5, 2)
puppy_pad1 = PuppyPad.new
baby.pick_up
baby.move(5, puppy_pad1)
puppy_pad1.has_poop(baby)

puts
wilfur = Dog.new("Wilfur", "Rottweiler and Corgi", 30, 5)
wilfur.pick_up
wilfur.move(35, puppy_pad1)
puppy_pad1.has_poop(wilfur)
puts
miguel_the_little_bastard = Dog.new("Miguel/Mike", "Chihuahua", 2, 15)
miguel_the_little_bastard.pick_up
miguel_the_little_bastard.move(5, puppy_pad1)
puppy_pad1.has_poop(miguel_the_little_bastard)

