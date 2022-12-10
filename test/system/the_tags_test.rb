require "application_system_test_case"

class TheTagsTest < ApplicationSystemTestCase
  setup do
    @the_tag = the_tags(:one)
  end

  test "visiting the index" do
    visit the_tags_url
    assert_selector "h1", text: "The tags"
  end

  test "should create the tag" do
    visit the_tags_url
    click_on "New the tag"

    click_on "Create The tag"

    assert_text "The tag was successfully created"
    click_on "Back"
  end

  test "should update The tag" do
    visit the_tag_url(@the_tag)
    click_on "Edit this the tag", match: :first

    click_on "Update The tag"

    assert_text "The tag was successfully updated"
    click_on "Back"
  end

  test "should destroy The tag" do
    visit the_tag_url(@the_tag)
    click_on "Destroy this the tag", match: :first

    assert_text "The tag was successfully destroyed"
  end
end
