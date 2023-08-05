# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :say, :name, :color

    def initialize(name)
        @name = name
        @color = "silver"
    end

    def say(words)
        "*~* #{words} *~*"
    end
end

uni1 = Unicorn.new("Scotland")
p uni1
p uni1.say("I am the national animal of Scotland")



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :thirsty, :pet, :drink, :new_thirsty

    def initialize(name, pet = "bat")
        @name = name
        @thirsty = true
        @pet = pet
    end

    def drink(new_thirsty)
        @thirsty = new_thirsty
        # @new_thirsty = false
        # @name = name
        # @pet = pet
    end
end

vampire1 = Vampire.new("Dracula")
p vampire1

vampire2 = Vampire.new("Dracula")
p vampire2
p "================="
vampire2.drink(false)
p vampire2

# In the code above when vampire2.drink is called only false is printed. Looking back at 
# the EscapeCar class I seem to have everything the same, I'll have to wokr on this.

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry



#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
