class RenameGolfclubIdToGolfClubId < ActiveRecord::Migration
  def change
    rename_column :course_nines, :golfclub_id, :golf_club_id
    rename_column :tees, :coursenine_id, :course_nine_id
    rename_column :holes, :coursenine_id, :course_nine_id
  end
end
