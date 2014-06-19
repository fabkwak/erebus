class DropCourseNines < ActiveRecord::Migration
  def up
    drop_table :course_nines
  end

  def down
    create_table :course_nines do |t|
      t.integer :golf_club_id
      t.string :name
    end
      t.timestamps
  end
end
