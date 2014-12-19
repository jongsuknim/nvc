require 'test_helper'

class FeelingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @card_one = feeling_cards(:one)
  end

  test "category" do
    assert_equal Feeling.get_not_finished_feelings.count, 1
    a = Feeling.get_not_finished_feelings.first
    assert_nil a.get_super_categories
    assert a.get_categories.count,2
  end

  test "vfeeling" do
    feeling = Feeling.new
    assert_nil feeling.vfeeling

    feeling.vfeeling = @card_one.title
    assert_nil feeling.vfeeling

    feeling.super_category = @card_one.super_category
    feeling.vfeeling = @card_one.title
    assert_nil feeling.vfeeling

    feeling.category = @card_one.category
    feeling.vfeeling = @card_one.title
    assert_equal feeling.vfeeling, @card_one.title
  end
end
