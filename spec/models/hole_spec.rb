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
#  course_id    :integer
#  ladies_par   :integer
#  ladies_handi :integer
#

require 'spec_helper'

describe Hole do
  pending "add some examples to (or delete) #{__FILE__}"
end
