class Renameteecourse < ActiveRecord::Migration
  def change
    rename_column :tees, :course_id, :course_nine_id
  end
end
