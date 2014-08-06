class AddCourseNineIdToTees < ActiveRecord::Migration
  def change
    add_column :tees, :course_nine_id, :integer
  end
end
