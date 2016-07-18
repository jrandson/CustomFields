require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = User.new(name:"example user",email:"exampleuser@example.com")
  	#user.errors.full_messages
  	#msg.empty?
  end

  test "should be valid" do
  	assert_not @user.valid?
  end

  test "name should be present" do
  	@user.name = ""
    assert_not @user.valid?
  end

  test "email should be present" do
  	@user.email = ""
    assert_not @user.valid?
  end

  test "name should not be too long" do
  	@user.name = "a" * 51
  	assert_not @user.valid?
  end

  test "email should not be too long" do
  	@user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  

  test "email address should be unique" do
		duplicate_user = @user.dup
		duplicate_user.email = @user.email.upcase
		@user.save
		assert_not duplicate_user.valid?
   end

  test "email address should be saved  as lower-case" do
  	mixed_case_email = "Foo@ExAmPle.coM"
  	@user.email = mixed_case_email
  	@user.save
  	assert_not_equal mixed_case_email.downcase, @user.email
  end







end
