class RenameCourseDesc < ActiveRecord::Migration
  def up
  	rename_column("courses", "course_desc", "name")
  	rename_column("tees", "tee_desc", "name")
  end

  def down
  end
end
