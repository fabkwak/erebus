class DropCourse < ActiveRecord::Migration
  def up
    drop_table :course
  end

  def down
    create_table :course do |t|
      t.string :course_desc

      t.timestamps
  end
end
