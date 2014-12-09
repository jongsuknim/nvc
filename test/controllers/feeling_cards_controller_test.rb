require 'test_helper'

class FeelingCardsControllerTest < ActionController::TestCase
  setup do
    @feeling_card = feeling_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feeling_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feeling_card" do
    assert_difference('FeelingCard.count') do
      post :create, feeling_card: { category: @feeling_card.category, super_category: @feeling_card.super_category, title: @feeling_card.title }
    end

    assert_redirected_to feeling_card_path(assigns(:feeling_card))
  end

  test "should show feeling_card" do
    get :show, id: @feeling_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feeling_card
    assert_response :success
  end

  test "should update feeling_card" do
    patch :update, id: @feeling_card, feeling_card: { category: @feeling_card.category, super_category: @feeling_card.super_category, title: @feeling_card.title }
    assert_redirected_to feeling_card_path(assigns(:feeling_card))
  end

  test "should destroy feeling_card" do
    assert_difference('FeelingCard.count', -1) do
      delete :destroy, id: @feeling_card
    end

    assert_redirected_to feeling_cards_path
  end
end
