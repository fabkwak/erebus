# == Schema Information
#
# Table name: tees
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  par            :integer
#  distance       :integer
#  golf_course_id :integer
#  rating         :float
#  slope          :float
#  pos            :integer
#  course_id      :integer
#

class Tee < ActiveRecord::Base
  attr_accessible 	:name, 
  					:par,
            :distance,
            :golf_course_id,
            :front,
            :back,
            :rating,
            :slope,
            :pos, 
            :course_id

  belongs_to :courses
  
  has_many :course_relationships
  has_many :course_nines, through: :course_relationships

  #accepts_nested_attributes_for :golf_clubs

  validates :name, presence: true, length: { maximum: 255 }
  validates :golf_course_id, presence: true,
                             numericality: { only_integer: true }
  validates :par, presence: true, 
                  numericality: { only_integer: true }
  validates :distance, presence: true,
                       numericality: { only_integer: true }
  validates :rating, presence: true
  validates :slope, presence: true

end
