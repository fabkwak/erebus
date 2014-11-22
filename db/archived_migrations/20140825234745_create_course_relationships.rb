class CreateCourseRelationships < ActiveRecord::Migration
  def change
    create_table :course_relationships do |t|
      t.integer :tee_id
      t.integer :course_nine_id
      t.integer :pos

      t.timestamps
    end
    
    add_index :course_relationships, :tee_id
    add_index :course_relationships, :course_nine_id
    add_index :course_relationships, [:tee_id , :course_nine_id], unique: true
  end
end
