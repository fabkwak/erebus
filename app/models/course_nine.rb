# == Schema Information
#
# Table name: course_nines
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  golf_course_id :string(255)
#

class CourseNine < ActiveRecord::Base
  attr_accessible :name
      
  has_many :holes
  has_many :course_relationships
  has_many :tees, through: :course_relationships

  validates :name, presence: true, length: { maximum: 255 }

end
