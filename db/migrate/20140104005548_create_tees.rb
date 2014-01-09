class CreateTees < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.string :tee_desc
      t.integer :course_id
      t.float :rating
      t.float :slope

      t.timestamps
    end
  end
end
