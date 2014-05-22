# == Schema Information
#
# Table name: course_nines
#
#  id          :integer          not null, primary key
#  golf_club   :integer
#  course_name :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CourseNine < ActiveRecord::Base
  attr_accessible :course_name, :golf_club
end
