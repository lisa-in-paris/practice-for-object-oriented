require "test_helper"

class ShainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shain = shains(:one)
  end

  test "should get index" do
    get shains_url
    assert_response :success
  end

  test "should get new" do
    get new_shain_url
    assert_response :success
  end

  test "should create shain" do
    assert_difference('Shain.count') do
      post shains_url, params: { shain: { kihonkyu: @shain.kihonkyu, name: @shain.name, yakushoku: @shain.yakushoku } }
    end

    assert_redirected_to shain_url(Shain.last)
  end

  test "should show shain" do
    get shain_url(@shain)
    assert_response :success
  end

  test "should get edit" do
    get edit_shain_url(@shain)
    assert_response :success
  end

  test "should update shain" do
    patch shain_url(@shain), params: { shain: { kihonkyu: @shain.kihonkyu, name: @shain.name, yakushoku: @shain.yakushoku } }
    assert_redirected_to shain_url(@shain)
  end

  test "should destroy shain" do
    assert_difference('Shain.count', -1) do
      delete shain_url(@shain)
    end

    assert_redirected_to shains_url
  end
end
