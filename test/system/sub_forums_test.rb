require "application_system_test_case"

class SubForumsTest < ApplicationSystemTestCase
  setup do
    @sub_forum = sub_forums(:one)
  end

  test "visiting the index" do
    visit sub_forums_url
    assert_selector "h1", text: "Sub Forums"
  end

  test "creating a Sub forum" do
    visit sub_forums_url
    click_on "New Sub Forum"

    fill_in "admin_ids", with: @sub_forum.admin_ids
    fill_in "Description", with: @sub_forum.description
    fill_in "Name", with: @sub_forum.name
    fill_in "number_of_posts", with: @sub_forum.number_of_posts
    fill_in "post_id", with: @sub_forum.post_id
    click_on "Create Sub forum"

    assert_text "Sub forum was successfully created"
    click_on "Back"
  end

  test "updating a Sub forum" do
    visit sub_forums_url
    click_on "Edit", match: :first

    fill_in "admin_ids", with: @sub_forum.admin_ids
    fill_in "Description", with: @sub_forum.description
    fill_in "Name", with: @sub_forum.name
    fill_in "number_of_posts", with: @sub_forum.number_of_posts
    fill_in "post_id", with: @sub_forum.post_id
    click_on "Update Sub forum"

    assert_text "Sub forum was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub forum" do
    visit sub_forums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub forum was successfully destroyed"
  end
end
