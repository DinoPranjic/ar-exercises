require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store 
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Dino", last_name: "Pranjic", hourly_rate: 80)
@store2.employees.create(first_name: "Billy", last_name: "Bob", hourly_rate: 20)
@store2.employees.create(first_name: "Joe", last_name: "Blow", hourly_rate: 40)
# pp @store1.employees
# pp @store2.employees