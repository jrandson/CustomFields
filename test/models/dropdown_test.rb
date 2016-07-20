require 'test_helper'

class DropdownTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  	setup do
    	@dropdown = dropdowns(:one)
  	end

	test 'when param is empty or nil' do
		options = '*'
		dd1 = Dropdown.new(options: options)

		assert_equal [], dd1.get_options
	end

    
	test "when it has more the one * consecutive" do
		options1 = "*ruby*python*java"
		options2 = "ruby*python*java*"
		options3 = "ruby**python*java*"
	

		dd1 = Dropdown.new(options: options1)
		dd2 = Dropdown.new(options: options2)
		dd3 = Dropdown.new(options: options3)

		assert_equal ['ruby','python','java'], dd1.get_options
		assert_equal ['ruby','python','java'], dd2.get_options
		assert_equal ['ruby','python','java'], dd3.get_options
	end

	test "eliminate first unsuitables *" do

		param1 = "ruby**python*java"
		param2 = ""
		param3 = "*"
		param4 = "*ruby*python*java"

		dd1 = Dropdown.new(options: param1)
		dd2 = Dropdown.new(options: param2)
		dd3 = Dropdown.new(options: param3)
		dd4 = Dropdown.new(options: param4)

		assert_equal 'ruby*python*java', dd1.options
		assert_equal '', dd2.options
		assert_equal '', dd3.options
		assert_equal 'ruby*python*java', dd4.options
	end
end
