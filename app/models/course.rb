# == Schema Information
#
# Table name: courses
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  golf_course_id :integer
#

class Course < ActiveRecord::Base
  attr_accessible :name, :golf_course_id

  belongs_to :golf_course
  has_many :tees
end
