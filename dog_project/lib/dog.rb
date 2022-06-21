class Dog
    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age 
        @age
    end

    def age=(number)
        @age = number
    end

    def bark
        if age <= 3
        @bark = "bork!"
        else 
        @bark = "BORK!"
        end
 
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(food)
        @favorite_foods.map! {|food| food.downcase}
        if @favorite_foods.include?(food.downcase)
            return true
        else
            false
        end
    end

end
