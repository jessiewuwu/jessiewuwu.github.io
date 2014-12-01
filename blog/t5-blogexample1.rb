class DiningRoom
    def initialize(texture, spice)
      @texture = texture
      @spice = spice
    end

    def breakfast
      print "I want to eat #{@texture} chicken with waffles and a side of fried potatos, #{@spice}. "
    end

    def lunch
      print "I'm craving #{@texture} chicken salad with tortilla soup, #{@spice}. "
    end

    def dinner
      print "Tonight I will have #{@texture} chicken with some veggie fried rice, #{@spice}. "
    end
end

esther = DiningRoom.new("extra crispy deep fried", "a little bit spicy")
puts esther.breakfast
puts "Hurry up, I don't have all day here!"
puts esther.lunch
puts "Are you tone-deaf? Do I have to repeat myself? Go get it!"
puts esther.dinner
puts "Well?? What are you waiting for? I'm hungry!"

theodore = DiningRoom.new("grilled", "very spicy, like 1 to 5 (5 being the hottest), level 6 spicy")
print theodore.breakfast
puts "Thanks sweetheart, and grab me a bottle of that Tabasco, why dontcha."
print  theodore.lunch
puts "Don't forget about the Taptio hot sauce!"
puts theodore.dinner
puts "You know to bring extra sriracha right?"
