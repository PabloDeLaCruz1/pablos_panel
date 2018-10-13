class InstructorUpdate < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name, :limit => 25
      t.string :last_name, :limit => 25
      t.integer :age
      t.integer :salary
      t.string :education
      t.belongs_to :cohort, index: true
      t.timestamps
    end
  end
end
