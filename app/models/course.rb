# == Schema Information
#
# Table name: courses
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  golf_club_id :string(255)
#

class Course < ActiveRecord::Base
  attr_accessible :name, :golf_club_id
  belongs_to :golf_clubs
  has_many :tees
  has_many :holes


end
