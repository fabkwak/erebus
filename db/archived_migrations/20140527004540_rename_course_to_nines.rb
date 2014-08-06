class RenameCourseToNines < ActiveRecord::Migration
def change
    rename_column :holes, :course_id, :course_nine_id
  end
end
