class AddHomeworkToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :homework, :text
  end
end
