# == Schema Information
#
# Table name: course_nines
#
#  id           :integer          not null, primary key
#  golf_club_id :integer
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CourseNine < ActiveRecord::Base
  attr_accessible :name, :golfclub_id
  belongs_to :golf_club
  has_many :tee
  #accepts_nested_attributes_for :tee

  validates :name, presence: true, length: { maximum: 255 }
  validates :golfclub_id, presence: true
end
