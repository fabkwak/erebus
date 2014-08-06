class RenameCourseNineIdToCouseNine < ActiveRecord::Migration
  def change
    rename_column :tees, :course_nine_id, :course_nine
  end
end
