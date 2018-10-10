class Course < ApplicationRecord
  # has_many :cohortcourses
  # has_many :cohorts, :through => :cohortcourses, dependent: :destroy
  validates :total_hours, numericality: {greater_than_or_equal_to: 0}

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("created_at ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }
end
