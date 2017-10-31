require 'test_helper'

class ServiceMenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_man = service_men(:one)
  end

  test "should get index" do
    get service_men_url
    assert_response :success
  end

  test "should get new" do
    get new_service_man_url
    assert_response :success
  end

  test "should create service_man" do
    assert_difference('ServiceMan.count') do
      post service_men_url, params: { service_man: { address: @service_man.address, age: @service_man.age, contact_no: @service_man.contact_no, email: @service_man.email, first_name: @service_man.first_name, last_name: @service_man.last_name, profile_pic: @service_man.profile_pic, shop_id: @service_man.shop_id } }
    end

    assert_redirected_to service_man_url(ServiceMan.last)
  end

  test "should show service_man" do
    get service_man_url(@service_man)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_man_url(@service_man)
    assert_response :success
  end

  test "should update service_man" do
    patch service_man_url(@service_man), params: { service_man: { address: @service_man.address, age: @service_man.age, contact_no: @service_man.contact_no, email: @service_man.email, first_name: @service_man.first_name, last_name: @service_man.last_name, profile_pic: @service_man.profile_pic, shop_id: @service_man.shop_id } }
    assert_redirected_to service_man_url(@service_man)
  end

  test "should destroy service_man" do
    assert_difference('ServiceMan.count', -1) do
      delete service_man_url(@service_man)
    end

    assert_redirected_to service_men_url
  end
end
