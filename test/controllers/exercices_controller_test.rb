require "test_helper"

class ExercicesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get exercices_home_url
    assert_response :success
  end

  test "should get show" do
    get exercices_show_url
    assert_response :success
  end
end
