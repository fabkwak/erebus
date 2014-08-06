class CourseNameToName < ActiveRecord::Migration
  def change
    rename_column :course_nines, :course_name, :name
  end
end
