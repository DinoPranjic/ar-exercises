require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

#total sum of revenue
puts Store.sum(:annual_revenue)

# average revenue per store
puts Store.average(:annual_revenue)

# number of stores with revenue over $1000000
puts Store.where('annual_revenue > ?', 1000000).count