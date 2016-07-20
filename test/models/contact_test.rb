require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup 
  	user_id = 1
  	name = 'contact name'
  	email = 'contact_example@email.com'
  	@contact = Contact.new(name: name, email: email, user_id: user_id)
  end

  test 'um teste bobo' do
  	assert_not false
  end

  test 'is a valid contact' do  	
  	assert_not @contact.valid?
  end

  test 'should be have email' do
  	@contact.email = ""
  	assert_not @contact.valid?
  end


end
