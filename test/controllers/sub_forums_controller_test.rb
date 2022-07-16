require "test_helper"

class SubForumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_forum = sub_forums(:one)
  end

  test "should get index" do
    get sub_forums_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_forum_url
    assert_response :success
  end

  test "should create sub_forum" do
    assert_difference('SubForum.count') do
      post sub_forums_url, params: { sub_forum: { admin_ids: @sub_forum.admin_ids, description: @sub_forum.description, name: @sub_forum.name, number_of_posts: @sub_forum.number_of_posts, post_id: @sub_forum.post_id } }
    end

    assert_redirected_to sub_forum_url(SubForum.last)
  end

  test "should show sub_forum" do
    get sub_forum_url(@sub_forum)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_forum_url(@sub_forum)
    assert_response :success
  end

  test "should update sub_forum" do
    patch sub_forum_url(@sub_forum), params: { sub_forum: { admin_ids: @sub_forum.admin_ids, description: @sub_forum.description, name: @sub_forum.name, number_of_posts: @sub_forum.number_of_posts, post_id: @sub_forum.post_id } }
    assert_redirected_to sub_forum_url(@sub_forum)
  end

  test "should destroy sub_forum" do
    assert_difference('SubForum.count', -1) do
      delete sub_forum_url(@sub_forum)
    end

    assert_redirected_to sub_forums_url
  end
end
