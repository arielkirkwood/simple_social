require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = Post.new(text: "Hello World")
    @saved_post = Post.create!(text: "Hello World")
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { text: @post.text }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @saved_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saved_post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @saved_post, post: { text: @saved_post.text }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @saved_post
    end

    assert_redirected_to posts_path
  end
end
