require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url

  end

  test "should get new" do
    get new_employee_url
  end

  test "should create employee" do

      post employees_url, params: { employee: { email: @employee.email, employee_status: @employee.employee_status, job: @employee.job, name: @employee.name, salary: @employee.salary } }



  end

  test "should show employee" do
    get employee_url(@employee)

  end

  test "should get edit" do
    get edit_employee_url(@employee)

  end


  test "should destroy employee" do


  end
end
