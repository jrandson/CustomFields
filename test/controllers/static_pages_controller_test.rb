require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
  	@base_title = "Custom fields App"
  end 

  test "should go home" do
    get root_path
    assert_response :success
  end

  test "should go to contact_field" do
    get contact_fields_path
    assert_response :success
  end
end
