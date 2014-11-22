class AddCourseIdToHoles < ActiveRecord::Migration
  def change
    add_column :holes, :course_id, :integer
    add_column :holes, :ladies_par, :integer
    add_column :holes, :ladies_handi, :integer
    add_column :tees, :ladies_par, :integer
  end
end
