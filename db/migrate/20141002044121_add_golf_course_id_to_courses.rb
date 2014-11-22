class AddGolfCourseIdToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :golf_course_id, :integer
	add_column :tees, :course_id, :integer
	add_column :course_nines, :course_id, :integer
	add_column :holes, :course_id, :integer


  end
end
