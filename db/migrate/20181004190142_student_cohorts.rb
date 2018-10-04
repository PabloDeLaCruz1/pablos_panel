class StudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :studentcohorts do |t|
      t.belongs_to :cohort, index: true
      t.belongs_to :student, index: true
      t.timestamps
    end
  end
end
