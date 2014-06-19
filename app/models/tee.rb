# == Schema Information
#
# Table name: tees
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  golf_club_id :integer
#  rating       :float
#  slope        :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  par          :integer
#

class Tee < ActiveRecord::Base
  attr_accessible :name, :golf_club_id, :rating, :slope, :par

  belongs_to :golf_clubs
  has_many :holes
  #accepts_nested_attributes_for :golf_clubs

  validates :name, presence: true, length: { maximum: 255 }
  validates :golf_club_id, presence: true
  validates :rating, presence: true
  validates :slope, presence: true
  validates :par, presence: true

end
