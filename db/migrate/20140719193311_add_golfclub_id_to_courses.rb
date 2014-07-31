class AddGolfclubIdToCourses < ActiveRecord::Migration
  def change
    add_column	:courses, :golfclub_id, :string
    add_column	:tees, :tot_distance, :integer
    rename_column :tees, :golf_club_id, :course_id
  end
end
