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
class Employee < ActiveRecord::Base
  validates :first_name,  presence:true
  validates :last_name, presence:true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200, message: "Must be an integer greater or equal to 40 and less than or equal to 200" }
  belongs_to :store
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3, message: "Name must be greater than 3 chars" }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Annual revenue must be greater than or equal to 0. Not null"}
  has_many :employees
end

myStore = gets.chomp

m = Store.create(name: myStore)
puts m.errors.messages
