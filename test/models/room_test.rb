# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  room_type  :integer
#  capacity   :integer
#  price      :decimal(, )
#  available  :boolean
#  hotel_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
