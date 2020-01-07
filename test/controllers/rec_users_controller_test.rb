require 'test_helper'

class RecUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rec_user = rec_users(:one)
  end

  test "should get index" do
    get rec_users_url
    assert_response :success
  end

  test "should get new" do
    get new_rec_user_url
    assert_response :success
  end

  test "should create rec_user" do
    assert_difference('RecUser.count') do
      post rec_users_url, params: { rec_user: { code: @rec_user.code, object_name: @rec_user.object_name, rec_comment: @rec_user.rec_comment, user_in_out: @rec_user.user_in_out } }
    end

    assert_redirected_to rec_user_url(RecUser.last)
  end

  test "should show rec_user" do
    get rec_user_url(@rec_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_rec_user_url(@rec_user)
    assert_response :success
  end

  test "should update rec_user" do
    patch rec_user_url(@rec_user), params: { rec_user: { code: @rec_user.code, object_name: @rec_user.object_name, rec_comment: @rec_user.rec_comment, user_in_out: @rec_user.user_in_out } }
    assert_redirected_to rec_user_url(@rec_user)
  end

  test "should destroy rec_user" do
    assert_difference('RecUser.count', -1) do
      delete rec_user_url(@rec_user)
    end

    assert_redirected_to rec_users_url
  end
end
