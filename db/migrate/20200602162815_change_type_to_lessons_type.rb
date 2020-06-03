class ChangeTypeToLessonsType < ActiveRecord::Migration[6.0]
  def change
    rename_column :lessons, :type, :lesson_type
  end
end
