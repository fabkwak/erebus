# == Schema Information
#
# Table name: tees
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course_id    :integer
#  rating       :float
#  slope        :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  par          :integer
#  tot_distance :integer
#  ladies_par   :integer
#  golf_club_id :integer
#

class Tee < ActiveRecord::Base
  attr_accessible 	:name, 
  					:course_id, 
  					:rating, 
  					:slope, 
  					:par

  belongs_to :courses
  belongs_to :golf_clubs

  has_many :holes
  #accepts_nested_attributes_for :golf_clubs

  validates :name, presence: true, length: { maximum: 255 }
  validates :course_id, presence: true
  validates :rating, presence: true
  validates :slope, presence: true
  validates :par, presence: true

end
