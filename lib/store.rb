class Store < ActiveRecord::Base
  # establish a 1-many association with employees table
  has_many :employees
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :mens_apparel, inclusion: {in: [true, false]}
  validates :womens_apparel, inclusion: {in: [true, false]}
end
