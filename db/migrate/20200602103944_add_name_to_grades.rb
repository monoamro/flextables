class AddNameToGrades < ActiveRecord::Migration[6.0]
  def change
    add_column :grades, :name, :string
  end
end
