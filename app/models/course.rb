class Course < ApplicationRecord
  has_many :cohorts, dependent: :destroy

  validates :total_hours, numericality: {greater_than_or_equal_to: 0}
end
