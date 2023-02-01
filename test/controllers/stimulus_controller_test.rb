require "test_helper"

class StimulusControllerTest < ActionDispatch::IntegrationTest
  test "should get dropdown_menu" do
    get stimulus_dropdown_menu_url
    assert_response :success
  end
end
