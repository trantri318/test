class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :class_university
      t.float :score
      t.string :learning_power
      t.timestamps
    end
  end
end
