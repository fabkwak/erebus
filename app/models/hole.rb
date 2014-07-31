# == Schema Information
#
# Table name: holes
#
#  id           :integer          not null, primary key
#  golf_club_id :integer
#  tee_id       :integer
#  num          :integer
#  par          :integer
#  distance     :integer
#  handicap     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  course_id    :integer
#  ladies_par   :integer
#  ladies_handi :integer
#


class Hole < ActiveRecord::Base
  attr_accessible 	:golf_club_id, 
  					:tee_id, 
  					:distance, 
  					:num, 
  					:par, 
  					:handicap, 
  					:ladies_par, 
  					:ladies_handi,
  					:course_id
 
  belongs_to :tees
  belongs_to :courses
  belongs_to :golf_clubs
  
  #accepts_nested_attributes_for :tee

  validates :course_id, presence: true
  validates :tee_id, presence: true
  validates :distance, presence: true
  validates :handicap, presence: true
  validates :num, presence: true
  validates :par, presence: true

end
