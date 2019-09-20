class Customer

    @@all = []

    attr_accessor :name, :age
  
    def initialize(name , age)
        @name = name
        @age = age

        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select do |i|
            i.customer == self
        end
    end

    def waiters
        wait = []
        Meal.all.each do |meal|
            wait << meal.waiter if meal.customer == self
        end
        wait
    end
end