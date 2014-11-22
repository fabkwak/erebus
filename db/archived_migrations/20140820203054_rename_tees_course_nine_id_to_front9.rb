class RenameTeesCourseNineIdToFront9 < ActiveRecord::Migration
  def change
  	remove_column :tees, :course_nine_id
  	
  end
end
