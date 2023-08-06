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
p "================="


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @thirsty = true
        @pet = pet
    end

    def drink(new_thirsty)
        @thirsty = new_thirsty
    end
end

vampire1 = Vampire.new("Dracula")
p vampire1

vampire2 = Vampire.new("Dracula")
p vampire2

vampire2.drink(false)
p vampire2
p "================="
# In the code above when vampire2.drink is called only false is printed. Looking back at 
# the EscapeCar class I seem to have everything the same, I'll have to wokr on this... 
# Solution: I had to call .drink on vampire seperate from a p statement, the p vampire2 after. 

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat(hungry)
        if hungry >= 4
            hungry = false
            @is_hungry = hungry
        else
            hungry = true
            @is_hungry = hungry
        end
        
    end
end

dragon1 = Dragon.new("Drogon", "Khaleesi", "red")
p dragon1

dragon1.eat(5)
p dragon1

dragon1.eat(3)
p dragon1

p "================="
#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(name, disposition)
        @name = name
        @disposition =disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
        if @name == "Frodo"
            @has_ring = true
        end
    end
    
    def celebrate_birthday
        new_age = @age += 1
        if @age >= 33 and @age < 101
            @is_adult = true
        elsif @age >= 101
            @is_old = true
        end
    end

    def celebrate_birthday_quick(years)
        @age =years
        if @age >= 33 and @age < 101
            @is_adult = true
        elsif @age >= 101
            @is_old = true
        end
    end
end

hobbit1 = Hobbit.new("Bilbo", "Crotchety")
p hobbit1
hobbit1.celebrate_birthday_quick(133)
p hobbit1

hobbit2 = Hobbit.new("Frodo", "Naive")
p hobbit2
hobbit2.celebrate_birthday_quick(33)
p hobbit2

hobbit3 = Hobbit.new("Sam", "Wise")
hobbit3.celebrate_birthday
p hobbit3
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday
hobbit3.celebrate_birthday

p hobbit3

