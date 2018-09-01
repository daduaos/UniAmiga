require 'test_helper'

class ApiRestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_rest = api_rests(:one)
  end

  test "should get index" do
    get api_rests_url
    assert_response :success
  end

  test "should get new" do
    get new_api_rest_url
    assert_response :success
  end

  test "should create api_rest" do
    assert_difference('ApiRest.count') do
      post api_rests_url, params: { api_rest: { body: @api_rest.body, count: @api_rest.count, title: @api_rest.title } }
    end

    assert_redirected_to api_rest_url(ApiRest.last)
  end

  test "should show api_rest" do
    get api_rest_url(@api_rest)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_rest_url(@api_rest)
    assert_response :success
  end

  test "should update api_rest" do
    patch api_rest_url(@api_rest), params: { api_rest: { body: @api_rest.body, count: @api_rest.count, title: @api_rest.title } }
    assert_redirected_to api_rest_url(@api_rest)
  end

  test "should destroy api_rest" do
    assert_difference('ApiRest.count', -1) do
      delete api_rest_url(@api_rest)
    end

    assert_redirected_to api_rests_url
  end
end
