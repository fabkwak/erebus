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

require 'spec_helper'

describe Tee do
  pending "add some examples to (or delete) #{__FILE__}"
end
