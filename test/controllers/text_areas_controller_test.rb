require 'test_helper'

class TextAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_area = text_areas(:one)
  end

  test "should get index" do
    get text_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_text_area_url
    assert_response :success
  end

  test "should create text_area" do
    assert_difference('TextArea.count') do
      post text_areas_url, params: { text_area: { name: @text_area.name, user_id: @text_area.user_id } }
    end

    assert_redirected_to text_area_url(TextArea.last)
  end

  test "should show text_area" do
    get text_area_url(@text_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_area_url(@text_area)
    assert_response :success
  end

  test "should update text_area" do
    patch text_area_url(@text_area), params: { text_area: { name: @text_area.name, user_id: @text_area.user_id } }
    assert_redirected_to text_area_url(@text_area)
  end

  test "should destroy text_area" do
    assert_difference('TextArea.count', -1) do
      delete text_area_url(@text_area)
    end

    assert_redirected_to text_areas_url
  end
end
