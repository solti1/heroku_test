require 'test_helper'

class HerokuNewsControllerTest < ActionController::TestCase
  setup do
    @heroku_news = heroku_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heroku_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heroku_news" do
    assert_difference('HerokuNew.count') do
      post :create, heroku_news: { description: @heroku_news.description, title: @heroku_news.title }
    end

    assert_redirected_to heroku_news_path(assigns(:heroku_news))
  end

  test "should show heroku_news" do
    get :show, id: @heroku_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @heroku_news
    assert_response :success
  end

  test "should update heroku_news" do
    patch :update, id: @heroku_news, heroku_news: { description: @heroku_news.description, title: @heroku_news.title }
    assert_redirected_to heroku_news_path(assigns(:heroku_news))
  end

  test "should destroy heroku_news" do
    assert_difference('HerokuNew.count', -1) do
      delete :destroy, id: @heroku_news
    end

    assert_redirected_to heroku_news_path
  end
end
