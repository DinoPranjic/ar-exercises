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

# store validations
class Store < ActiveRecord::Base
  validates :name, presence: true, :length => { :minimum => 3 }
  validates :annual_revenue, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 }
  # BONUS VALIDATION
  validate :mens_or_womens_apparel

  def mens_or_womens_apparel
    if mens_apparel == nil && womens_apparel == nil
      errors.add(:mens_apparel, :womens_apparel, "must specify a type of apparel sold!")
    end
  end
end

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { :only_integer => true, :greater_than_or_equal_to => 40, :less_than_or_equal_to => 200}
  validates_associated :store
end


Store.create(name: '', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

puts Store.new.errors[:name].any?