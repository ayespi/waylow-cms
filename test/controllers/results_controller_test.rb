require 'test_helper'

class ResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @result = results(:one)
  end

  test "should get index" do
    get results_url
    assert_response :success
  end

  test "should get new" do
    get new_result_url
    assert_response :success
  end

  test "should create result" do
    assert_difference('Result.count') do
      post results_url, params: { result: { overall_weight_loss: @result.overall_weight_loss, overall_weight_loss_percent: @result.overall_weight_loss_percent, participant_id: @result.participant_id, week_number: @result.week_number, weight_loss: @result.weight_loss, weight_loss_percent: @result.weight_loss_percent } }
    end

    assert_redirected_to result_url(Result.last)
  end

  test "should show result" do
    get result_url(@result)
    assert_response :success
  end

  test "should get edit" do
    get edit_result_url(@result)
    assert_response :success
  end

  test "should update result" do
    patch result_url(@result), params: { result: { overall_weight_loss: @result.overall_weight_loss, overall_weight_loss_percent: @result.overall_weight_loss_percent, participant_id: @result.participant_id, week_number: @result.week_number, weight_loss: @result.weight_loss, weight_loss_percent: @result.weight_loss_percent } }
    assert_redirected_to result_url(@result)
  end

  test "should destroy result" do
    assert_difference('Result.count', -1) do
      delete result_url(@result)
    end

    assert_redirected_to results_url
  end
end
