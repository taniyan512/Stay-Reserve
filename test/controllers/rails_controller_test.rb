require "test_helper"

class RailsControllerTest < ActionDispatch::IntegrationTest
  test "should get db:migration" do
    get rails_db:migration_url
    assert_response :success
  end
end
