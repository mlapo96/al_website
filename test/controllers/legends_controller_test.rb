require 'test_helper'

class LegendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legend = legends(:one)
  end

  test "should get index" do
    get legends_url
    assert_response :success
  end

  test "should get new" do
    get new_legend_url
    assert_response :success
  end

  test "should create legend" do
    assert_difference('Legend.count') do
      post legends_url, params: { legend: { legend_ability_desc: @legend.legend_ability_desc, legend_ability_name: @legend.legend_ability_name, legend_desc: @legend.legend_desc, legend_name: @legend.legend_name, legend_passive_desc: @legend.legend_passive_desc, legend_passive_name: @legend.legend_passive_name, legend_ult_desc: @legend.legend_ult_desc, legend_ult_name: @legend.legend_ult_name } }
    end

    assert_redirected_to legend_url(Legend.last)
  end

  test "should show legend" do
    get legend_url(@legend)
    assert_response :success
  end

  test "should get edit" do
    get edit_legend_url(@legend)
    assert_response :success
  end

  test "should update legend" do
    patch legend_url(@legend), params: { legend: { legend_ability_desc: @legend.legend_ability_desc, legend_ability_name: @legend.legend_ability_name, legend_desc: @legend.legend_desc, legend_name: @legend.legend_name, legend_passive_desc: @legend.legend_passive_desc, legend_passive_name: @legend.legend_passive_name, legend_ult_desc: @legend.legend_ult_desc, legend_ult_name: @legend.legend_ult_name } }
    assert_redirected_to legend_url(@legend)
  end

  test "should destroy legend" do
    assert_difference('Legend.count', -1) do
      delete legend_url(@legend)
    end

    assert_redirected_to legends_url
  end
end
