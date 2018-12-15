require 'test_helper'

class PotholesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pothole = potholes(:one)
  end

  test "should get index" do
    get potholes_url
    assert_response :success
  end

  test "should get new" do
    get new_pothole_url
    assert_response :success
  end

  test "should create pothole" do
    assert_difference('Pothole.count') do
      post potholes_url, params: { pothole: { district: @pothole.district, location: @pothole.location, size: @pothole.size, streetAdress: @pothole.streetAdress } }
    end

    assert_redirected_to pothole_url(Pothole.last)
  end

  test "should show pothole" do
    get pothole_url(@pothole)
    assert_response :success
  end

  test "should get edit" do
    get edit_pothole_url(@pothole)
    assert_response :success
  end

  test "should update pothole" do
    patch pothole_url(@pothole), params: { pothole: { district: @pothole.district, location: @pothole.location, size: @pothole.size, streetAdress: @pothole.streetAdress } }
    assert_redirected_to pothole_url(@pothole)
  end

  test "should destroy pothole" do
    assert_difference('Pothole.count', -1) do
      delete pothole_url(@pothole)
    end

    assert_redirected_to potholes_url
  end
end
