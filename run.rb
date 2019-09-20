require "pry"

require_relative 'lib/customer.rb'
require_relative 'lib/meal.rb'
require_relative 'lib/waiter.rb'

howard = Customer.new("Howard", 30)
daniel = Customer.new("Daniel", 30)
lisa = Customer.new("Lisa", 27)
josh = Customer.new("Josh", 31)
steven = Customer.new("Steven", 28)
terrance = Waiter.new("Terrance", 1)


howard.new_meal(terrance, 15, 2)
daniel.new_meal(terrance, 15, 4)
lisa.new_meal(terrance, 15, 5)
josh.new_meal(terrance, 15, 1)
steven.new_meal(terrance, 15, 3)

binding.pry 
0