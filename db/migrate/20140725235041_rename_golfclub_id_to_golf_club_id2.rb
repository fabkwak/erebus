class RenameGolfclubIdToGolfClubId2 < ActiveRecord::Migration
  def change
   rename_column :courses,:golfclub_id, :golf_club_id
   add_column :tees, :golf_club_id, :integer
  end
end
