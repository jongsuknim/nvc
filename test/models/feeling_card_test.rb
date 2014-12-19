require 'test_helper'

class FeelingCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "super categories" do
    FeelingCard.get_super_categories
    puts FeelingCard.get_feelings('sca', 'ca')
  end

end
