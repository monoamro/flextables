class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :room
      t.integer :capacity
      t.string :type
      t.references :teacher, null: false, foreign_key: true
      t.references :grade, null: false, foreign_key: true
      t.string :weekly_periods, array: true, default: []

      t.timestamps
    end
  end
end
