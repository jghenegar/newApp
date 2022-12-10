require "test_helper"

class TheTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @the_tag = the_tags(:one)
  end

  test "should get index" do
    get the_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_the_tag_url
    assert_response :success
  end

  test "should create the_tag" do
    assert_difference("TheTag.count") do
      post the_tags_url, params: { the_tag: {  } }
    end

    assert_redirected_to the_tag_url(TheTag.last)
  end

  test "should show the_tag" do
    get the_tag_url(@the_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_the_tag_url(@the_tag)
    assert_response :success
  end

  test "should update the_tag" do
    patch the_tag_url(@the_tag), params: { the_tag: {  } }
    assert_redirected_to the_tag_url(@the_tag)
  end

  test "should destroy the_tag" do
    assert_difference("TheTag.count", -1) do
      delete the_tag_url(@the_tag)
    end

    assert_redirected_to the_tags_url
  end
end
