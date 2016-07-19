require 'test_helper'

class TextFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_field = text_fields(:one)
  end

  test "should get index" do
    get text_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_text_field_url
    assert_response :success
  end

  test "should create text_field" do
    assert_difference('TextField.count') do
      post text_fields_url, params: { text_field: { name: @text_field.name, user_id: @text_field.user_id } }
    end

    assert_redirected_to text_field_url(TextField.last)
  end

  test "should show text_field" do
    get text_field_url(@text_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_field_url(@text_field)
    assert_response :success
  end

  test "should update text_field" do
    patch text_field_url(@text_field), params: { text_field: { name: @text_field.name, user_id: @text_field.user_id } }
    assert_redirected_to text_field_url(@text_field)
  end

  test "should destroy text_field" do
    assert_difference('TextField.count', -1) do
      delete text_field_url(@text_field)
    end

    assert_redirected_to text_fields_url
  end
end
