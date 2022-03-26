require "test_helper"

class DivisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @division = divisions(:one)
  end

  test "should get index" do
    get divisions_url
  end

  test "should get new" do
    get new_division_url
  end

#   test "should create division" do
#     assert_difference("Division.count") do
#     end

#   end

  test "should show division" do
    get division_url(@division)
  end

  test "should get edit" do
    get edit_division_url(@division)
  end

  test "should update division" do
    patch division_url(@division), params: { division: { description: @division.description, manager: @division.manager, name: @division.name } }
  end

#   test "should destroy division" do
#     assert_difference("Division.count", -1) do
#     end

#     assert_redirected_to divisions_url
#   end
end
