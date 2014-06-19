# == Schema Information
#
# Table name: tees
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  course_nine_id :integer
#  rating         :float
#  slope          :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  par            :integer
#

class Tee < ActiveRecord::Base
  attr_accessible :name, :course_nine_id, :rating, :slope, :par

  belongs_to :course_nines
  has_many :holes
  #accepts_nested_attributes_for :tee

  validates :name, presence: true, length: { maximum: 255 }
  validates :coursenine_id, presence: true
  validates :rating, presence: true
  validates :slope, presence: true
  validates :par, presence: true

end
