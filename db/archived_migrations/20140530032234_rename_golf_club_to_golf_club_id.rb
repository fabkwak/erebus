class RenameGolfClubToGolfClubId < ActiveRecord::Migration
  def change
    rename_column :course_nines, :golf_club, :golfclub_id
    rename_column :tees, :course_nine, :coursenine_id
    rename_column :holes, :course_nine_id, :coursenine_id
  end
end