# == Schema Information
#
# Table name: holes
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  tee_id     :integer
#  num        :integer
#  par        :integer
#  distance   :integer
#  handicap   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hole < ActiveRecord::Base
  attr_accessible :course_id, :tee_id, :distance, :handicap, :num, :par

  belongs_to :tee
  belongs_to :course

  validates :course_id, presence: true
  validates :tee_id, presence: true
  validates :distance, presence: true
  validates :handicap, presence: true
  validates :num, presence: true
  validates :par, presence: true

end
