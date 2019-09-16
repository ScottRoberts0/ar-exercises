require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

class Employee < ActiveRecord::Base
  before_save do
    self.password = "A2423faa"
  end



  # before_create do
  #   self.password = "A2423faa"
  # end
  
  # after_create do
  #   self.update(password: "A2423faa")
  # end




end

emp = @store1.employees.create(first_name: "Larry", last_name: "Bird", hourly_rate: 100)
puts emp.password