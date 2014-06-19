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
#


class Hole < ActiveRecord::Base
  attr_accessible :golf_club_id, :tee_id, :distance, :num, :par, :handicap 
  belongs_to :tees
  
  #accepts_nested_attributes_for :tee

  validates :golf_club_id, presence: true
  validates :tee_id, presence: true
  validates :distance, presence: true
  validates :handicap, presence: true
  validates :num, presence: true
  validates :par, presence: true

end
