class AddParToTees < ActiveRecord::Migration
  def change
    add_column :tees, :par, :integer
  end
end
