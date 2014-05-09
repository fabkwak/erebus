# == Schema Information
#
# Table name: tees
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  course_id  :integer
#  rating     :float
#  slope      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tee < ActiveRecord::Base
  attr_accessible :course_id, :rating, :slope, :name

  belongs_to :course
  has_many :holes

  validates :name, presence: true, length: { maximum: 255 }
  validates :course_id, presence: true
  validates :rating, presence: true
  validates :slope, presence: true
  

end
