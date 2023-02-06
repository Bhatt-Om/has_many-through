require "test_helper"

class HospitlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hospitles_index_url
    assert_response :success
  end

  test "should get show" do
    get hospitles_show_url
    assert_response :success
  end

  test "should get new" do
    get hospitles_new_url
    assert_response :success
  end

  test "should get create" do
    get hospitles_create_url
    assert_response :success
  end

  test "should get edit" do
    get hospitles_edit_url
    assert_response :success
  end

  test "should get update" do
    get hospitles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get hospitles_destroy_url
    assert_response :success
  end
end
