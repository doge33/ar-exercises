require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts Store.sum('annual_revenue')
puts Store.average('annual_revenue')

store_count = Store.where("annual_revenue >= ?", 1000000).count

puts "there are #{store_count} stores that are generating greater than or equal to 1M dollars annually"


