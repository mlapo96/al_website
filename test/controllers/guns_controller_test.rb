require 'test_helper'

class GunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gun = guns(:one)
  end

  test "should get index" do
    get guns_url
    assert_response :success
  end

  test "should get new" do
    get new_gun_url
    assert_response :success
  end

  test "should create gun" do
    assert_difference('Gun.count') do
      post guns_url, params: { gun: { ammo_type: @gun.ammo_type, gun_body: @gun.gun_body, gun_description: @gun.gun_description, gun_headshot: @gun.gun_headshot, gun_name: @gun.gun_name, gun_type: @gun.gun_type, mag_size: @gun.mag_size } }
    end

    assert_redirected_to gun_url(Gun.last)
  end

  test "should show gun" do
    get gun_url(@gun)
    assert_response :success
  end

  test "should get edit" do
    get edit_gun_url(@gun)
    assert_response :success
  end

  test "should update gun" do
    patch gun_url(@gun), params: { gun: { ammo_type: @gun.ammo_type, gun_body: @gun.gun_body, gun_description: @gun.gun_description, gun_headshot: @gun.gun_headshot, gun_name: @gun.gun_name, gun_type: @gun.gun_type, mag_size: @gun.mag_size } }
    assert_redirected_to gun_url(@gun)
  end

  test "should destroy gun" do
    assert_difference('Gun.count', -1) do
      delete gun_url(@gun)
    end

    assert_redirected_to guns_url
  end
end
