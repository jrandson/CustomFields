require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    
    @contact = contacts(:one)
    @user = User.first     
    session[:user_id] = @user.id
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end
    assert_redirected_to contacts_url
  end
end
