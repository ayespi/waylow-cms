require 'test_helper'

class WeighInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weigh_in = weigh_ins(:one)
  end

  test "should get index" do
    get weigh_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_weigh_in_url
    assert_response :success
  end

  test "should create weigh_in" do
    assert_difference('WeighIn.count') do
      post weigh_ins_url, params: { weigh_in: { participant_id: @weigh_in.participant_id, team_id: @weigh_in.team_id, weight_10: @weigh_in.weight_10, weight_1: @weigh_in.weight_1, weight_2: @weigh_in.weight_2, weight_3: @weigh_in.weight_3, weight_4: @weigh_in.weight_4, weight_5: @weigh_in.weight_5, weight_6: @weigh_in.weight_6, weight_7: @weigh_in.weight_7, weight_8: @weigh_in.weight_8, weight_9: @weigh_in.weight_9, weight_begin: @weigh_in.weight_begin, weight_end: @weigh_in.weight_end } }
    end

    assert_redirected_to weigh_in_url(WeighIn.last)
  end

  test "should show weigh_in" do
    get weigh_in_url(@weigh_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_weigh_in_url(@weigh_in)
    assert_response :success
  end

  test "should update weigh_in" do
    patch weigh_in_url(@weigh_in), params: { weigh_in: { participant_id: @weigh_in.participant_id, team_id: @weigh_in.team_id, weight_10: @weigh_in.weight_10, weight_1: @weigh_in.weight_1, weight_2: @weigh_in.weight_2, weight_3: @weigh_in.weight_3, weight_4: @weigh_in.weight_4, weight_5: @weigh_in.weight_5, weight_6: @weigh_in.weight_6, weight_7: @weigh_in.weight_7, weight_8: @weigh_in.weight_8, weight_9: @weigh_in.weight_9, weight_begin: @weigh_in.weight_begin, weight_end: @weigh_in.weight_end } }
    assert_redirected_to weigh_in_url(@weigh_in)
  end

  test "should destroy weigh_in" do
    assert_difference('WeighIn.count', -1) do
      delete weigh_in_url(@weigh_in)
    end

    assert_redirected_to weigh_ins_url
  end
end
