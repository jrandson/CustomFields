require 'test_helper'

class TextAreaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	setup do
		@text_area = text_areas(:one)
	end

	test 'shoul have a name' do
		@text_area.name = ""
		assert_not @text_area.valid?
	end

	test 'name should be less than 200' do
		@text_area.name = "a"*201
		assert_not @text_area.valid?
	end


end
