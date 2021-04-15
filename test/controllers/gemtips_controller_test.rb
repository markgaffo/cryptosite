require 'test_helper'

class GemtipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gemtip = gemtips(:one)
  end

  test "should get index" do
    get gemtips_url
    assert_response :success
  end

  test "should get new" do
    get new_gemtip_url
    assert_response :success
  end

  test "should create gemtip" do
    assert_difference('Gemtip.count') do
      post gemtips_url, params: { gemtip: { tipnumb: @gemtip.tipnumb } }
    end

    assert_redirected_to gemtip_url(Gemtip.last)
  end

  test "should show gemtip" do
    get gemtip_url(@gemtip)
    assert_response :success
  end

  test "should get edit" do
    get edit_gemtip_url(@gemtip)
    assert_response :success
  end

  test "should update gemtip" do
    patch gemtip_url(@gemtip), params: { gemtip: { tipnumb: @gemtip.tipnumb } }
    assert_redirected_to gemtip_url(@gemtip)
  end

  test "should destroy gemtip" do
    assert_difference('Gemtip.count', -1) do
      delete gemtip_url(@gemtip)
    end

    assert_redirected_to gemtips_url
  end
end
