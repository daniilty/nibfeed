require 'test_helper'

class AdmlogControllerTest < ActionDispatch::IntegrationTest
  test "should get log" do
    get admlog_log_url
    assert_response :success
  end

end
