require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
#different from how we created store; already had 1-many relationship
@store4 = Store.find_by(id:4)
@store5 = Store.find_by(id:5)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Lily", last_name: "White", hourly_rate: 58)
Employee.create(first_name: "Lilian", last_name: "White", hourly_rate: 58) #will not get created because every employee needs to be assigned a store
@store2.employees.create(first_name: "Albert", last_name: "Jackson", hourly_rate: 65)
@store2.employees.create(first_name: "Ray", last_name: "Lu", hourly_rate: 70)
@store2.employees.create(first_name: "Xi", last_name: "Lee", hourly_rate: 65)
@store3.employees.create(first_name: "Mary", last_name: "Gardner", hourly_rate: 55)
@store4.employees.create(first_name: "Logan", last_name: "Reynolds", hourly_rate: 48)
@store4.employees.create(first_name: "Elliot", last_name: "Jefferson", hourly_rate: 60)
@store5.employees.create(first_name: "Riva", last_name: "Kelly", hourly_rate: 78)
@store5.employees.create(first_name: "Lambert", last_name: "Chu", hourly_rate: 55)
@store5.employees.create(first_name: "Leila", last_name: "Goldman", hourly_rate: 65)
@store5.employees.create(first_name: "Tony", last_name: "Eckert", hourly_rate: 58)
@store5.employees.create(first_name: "Trevor", last_name: "Eckert", hourly_rate: 38) # will not be created because hourly_wage must >= 40
@store5.employees.create(first_name: "Ruben", last_name: "Eckert", hourly_rate: 299) # will not be created because hourly_wage must <= 200



p Employee.count #==> 12, without Lilian, Trevor, Ruben


