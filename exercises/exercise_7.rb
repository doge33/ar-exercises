require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter a new store name"

@store_name = gets.chomp

new_store = Store.create(name: @store_name)

puts "'annual_revenue' #{new_store.errors[:annual_revenue]}"
puts "'mens_apparel' field #{new_store.errors[:mens_apparel]}"
puts "'womens_apparel' field #{new_store.errors[:womens_apparel]}"

p @store_name