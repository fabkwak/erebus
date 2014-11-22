class CreateCourseNines < ActiveRecord::Migration
  def change
    create_table :course_nines do |t|
      t.integer :golf_club
      t.string :course_nine_name

      t.timestamps
    end
  end
end
