# == Schema Information
#
# Table name: course_relationships
#
#  id             :integer          not null, primary key
#  tee_id         :integer
#  course_nine_id :integer
#  pos            :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class CourseRelationship < ActiveRecord::Base
  attr_accessible :course_nine_id, :pos, :tee_id

  belongs_to :tee
  belongs_to :course_nine

end
