class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :course_id
      t.integer :tee_id
      t.integer :num
      t.integer :par
      t.integer :distance
      t.integer :handicap

      t.timestamps
    end
  end
end
