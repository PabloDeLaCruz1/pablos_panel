class Student < ApplicationRecord
  has_many :studentcohorts
  has_many :cohorts, :through => :studentcohorts
  validates :age, numericality: {less_than_or_equal_to: 150}
end
