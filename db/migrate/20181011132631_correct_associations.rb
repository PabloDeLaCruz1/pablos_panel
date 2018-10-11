class CorrectAssociations < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :instructor, :string
    remove_column :cohorts, :students, :string
    remove_column :courses, :cohort_id, :integer

    add_column :cohorts, :instructor_id, :integer
    add_column :cohorts, :course_id, :integer
  end
end
