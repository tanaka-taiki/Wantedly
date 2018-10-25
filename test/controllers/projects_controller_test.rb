require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toppages_index_url
    assert_response :success
  end
  # test "the truth" do
  #   assert true
  # end
end
