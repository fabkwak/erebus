class CourseRelationship < ActiveRecord::Base
  attr_accessible :course_nine_id, :pos, :tee_id

  belongs_to :tee
  belongs_to :course_nine

end
