require 'test_helper'

class NeedCardsControllerTest < ActionController::TestCase
  setup do
    @need_card = need_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:need_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create need_card" do
    assert_difference('NeedCard.count') do
      post :create, need_card: { category: @need_card.category, title: @need_card.title }
    end

    assert_redirected_to need_card_path(assigns(:need_card))
  end

  test "should show need_card" do
    get :show, id: @need_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @need_card
    assert_response :success
  end

  test "should update need_card" do
    patch :update, id: @need_card, need_card: { category: @need_card.category, title: @need_card.title }
    assert_redirected_to need_card_path(assigns(:need_card))
  end

  test "should destroy need_card" do
    assert_difference('NeedCard.count', -1) do
      delete :destroy, id: @need_card
    end

    assert_redirected_to need_cards_path
  end
end
