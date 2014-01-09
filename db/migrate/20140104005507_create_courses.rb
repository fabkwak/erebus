class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_desc

      t.timestamps
    end
  end
end
