require 'test_helper'

class ExamSeatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get exam_seats_new_url
    assert_response :success
  end

end
