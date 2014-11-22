class AddPosToTees < ActiveRecord::Migration
  def change
    add_column :tees, :pos, :integer

    remove_column :tees, :front
    remove_column :tees, :back
  end
end
