# == Schema Information
#
# Table name: holes
#
#  id              :integer          not null, primary key
#  golf_course_id  :integer
#  tee_id          :integer
#  num             :integer
#  par             :integer
#  distance        :integer
#  handicap        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  course_nine_id  :integer
#  ladies_par      :integer
#  ladies_handicap :integer
#


class Hole < ActiveRecord::Base
  attr_accessible 	:golf_course_id, 
  					:tee_id,
  					:num, 
  					:par, 
            :distance, 
  					:handicap, 
  					:ladies_par, 
  					:ladies_handi,
  					:course_nine_id
 

  belongs_to :course_nines
  belongs_to :golf_clubs

  #accepts_nested_attributes_for :tee

  validates :course_nine_id, presence: true
  validates :tee_id, presence: true
  validates :distance, presence: true
  validates :handicap, presence: true
  validates :num, presence: true
  validates :par, presence: true

end
