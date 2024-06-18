require "test_helper"

class ContenidosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contenidos_index_url
    assert_response :success
  end

  test "should get show" do
    get contenidos_show_url
    assert_response :success
  end

  test "should get new" do
    get contenidos_new_url
    assert_response :success
  end

  test "should get edit" do
    get contenidos_edit_url
    assert_response :success
  end
end
