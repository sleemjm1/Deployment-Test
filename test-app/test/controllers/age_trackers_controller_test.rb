require 'test_helper'

class AgeTrackersControllerTest < ActionController::TestCase
  setup do
    @age_tracker = age_trackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:age_trackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create age_tracker" do
    assert_difference('AgeTracker.count') do
      post :create, age_tracker: { age: @age_tracker.age, name: @age_tracker.name }
    end

    assert_redirected_to age_tracker_path(assigns(:age_tracker))
  end

  test "should show age_tracker" do
    get :show, id: @age_tracker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @age_tracker
    assert_response :success
  end

  test "should update age_tracker" do
    patch :update, id: @age_tracker, age_tracker: { age: @age_tracker.age, name: @age_tracker.name }
    assert_redirected_to age_tracker_path(assigns(:age_tracker))
  end

  test "should destroy age_tracker" do
    assert_difference('AgeTracker.count', -1) do
      delete :destroy, id: @age_tracker
    end

    assert_redirected_to age_trackers_path
  end
end
