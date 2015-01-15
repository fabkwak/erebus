class DropGolfclub < ActiveRecord::Migration
  def up
    drop_table :golf_club
  end

  def down
    create_table :golf_club do |t|
    t.string :name
    
    t.timestamps        
  end
end
