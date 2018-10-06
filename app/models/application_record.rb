class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("created_at ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }

  def created_at_formatted
    self.created_at.strftime("%m/%d/%Y")
  end

  def updated_at_formatted
    self.updated_at.strftime("%m/%d/%Y")
  end
end
