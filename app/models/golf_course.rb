# == Schema Information
#
# Table name: golf_courses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GolfCourse < ActiveRecord::Base
  attr_accessible :name
  
  has_many :tees
  has_many :course_nines
  has_many :courses

  #accepts_nested_attributes_for :courses

  validates :name, presence: true, length: { maximum: 150 }

  
end
