class AddFrontBackToGolfClub < ActiveRecord::Migration
  def change
    rename_table :golf_clubs, :golf_courses
    rename_table :courses, :course_nines

    add_column :golf_courses, :front, :integer
    add_column :golf_courses, :back,  :integer
    add_column :golf_courses, :rating, :float
    add_column :golf_courses, :slope, :float
    add_column :golf_courses, :par, :integer
    add_column :golf_courses, :distance, :integer

    remove_column :tees, :rating
  	remove_column :tees, :slope

  	rename_column :course_nines, :golf_club_id, :golf_course_id
  	rename_column :tees, :golf_club_id, :golf_course_id
  	rename_column :holes, :golf_club_id, :golf_course_id

  	rename_column :tees, :course_id, :course_nine_id
  	rename_column :holes, :course_id, :course_nine_id

	rename_column :tees, :tot_distance, :distance

	rename_column :holes, :ladies_handi, :ladies_handicap

  end
end
