# == Schema Information
#
# Table name: golf_clubs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GolfClub < ActiveRecord::Base
  attr_accessible :name
end
