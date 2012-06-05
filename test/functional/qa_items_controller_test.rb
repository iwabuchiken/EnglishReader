require 'test_helper'

class QaItemsControllerTest < ActionController::TestCase
  setup do
    @qa_item = qa_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qa_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qa_item" do
    assert_difference('QaItem.count') do
      post :create, qa_item: @qa_item.attributes
    end

    assert_redirected_to qa_item_path(assigns(:qa_item))
  end

  test "should show qa_item" do
    get :show, id: @qa_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qa_item
    assert_response :success
  end

  test "should update qa_item" do
    put :update, id: @qa_item, qa_item: @qa_item.attributes
    assert_redirected_to qa_item_path(assigns(:qa_item))
  end

  test "should destroy qa_item" do
    assert_difference('QaItem.count', -1) do
      delete :destroy, id: @qa_item
    end

    assert_redirected_to qa_items_path
  end
end
