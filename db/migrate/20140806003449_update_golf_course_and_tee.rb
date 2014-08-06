class UpdateGolfCourseAndTee < ActiveRecord::Migration
  def change
    remove_column :golf_courses, :front
    remove_column :golf_courses, :back
    remove_column :golf_courses, :rating
    remove_column :golf_courses, :slope
    remove_column :golf_courses, :par
    remove_column :golf_courses, :distance

	remove_column :tees, :course_nine_id 
	remove_column :tees, :ladies_par   

    add_column :tees, :front, :integer
    add_column :tees, :back, :integer
    add_column :tees, :rating, :float
    add_column :tees, :slope, :float
    
  end

  
end
