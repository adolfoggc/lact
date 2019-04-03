require 'test_helper'

class PcUsagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pc_usage = pc_usages(:one)
  end

  test "should get index" do
    get pc_usages_url
    assert_response :success
  end

  test "should get new" do
    get new_pc_usage_url
    assert_response :success
  end

  test "should create pc_usage" do
    assert_difference('PcUsage.count') do
      post pc_usages_url, params: { pc_usage: { end_at: @pc_usage.end_at, pc_id: @pc_usage.pc_id, start_at: @pc_usage.start_at, student_id: @pc_usage.student_id } }
    end

    assert_redirected_to pc_usage_url(PcUsage.last)
  end

  test "should show pc_usage" do
    get pc_usage_url(@pc_usage)
    assert_response :success
  end

  test "should get edit" do
    get edit_pc_usage_url(@pc_usage)
    assert_response :success
  end

  test "should update pc_usage" do
    patch pc_usage_url(@pc_usage), params: { pc_usage: { end_at: @pc_usage.end_at, pc_id: @pc_usage.pc_id, start_at: @pc_usage.start_at, student_id: @pc_usage.student_id } }
    assert_redirected_to pc_usage_url(@pc_usage)
  end

  test "should destroy pc_usage" do
    assert_difference('PcUsage.count', -1) do
      delete pc_usage_url(@pc_usage)
    end

    assert_redirected_to pc_usages_url
  end
end
