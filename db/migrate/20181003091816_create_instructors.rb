class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age #- must be less than 150
      t.integer :salary #- cannot be less than 0
      t.string :education #highest completed education - should be limited to HS, College, Masters, PHD
      t.timestamps
    end
  end
end
