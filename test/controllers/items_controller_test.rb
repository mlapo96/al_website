require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get guns" do
    get items_guns_url
    assert_response :success
  end

  test "should get attachments" do
    get items_attachments_url
    assert_response :success
  end

  test "should get consumables" do
    get items_consumables_url
    assert_response :success
  end

end
