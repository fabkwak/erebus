class RenameCourseNinesToGolfClubs < ActiveRecord::Migration
	def change
	    rename_column :tees, :course_nine_id, :golf_club_id
	    rename_column :holes, :course_nine_id, :golf_club_id
	end
end
