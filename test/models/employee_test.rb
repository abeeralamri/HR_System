require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "employee should be save success" do
    emp = Employee.new
    emp.name = "abeer"
    emp.email = "example@mail.com"
    emp.job = "backend developer"
    emp.salary = 10000
    emp.employee_status = "full time"

    assert emp.save
  end

  test "name should not be empty" do
    emp = Employee.new
    emp.email = "example@mail.com"
    emp.job = "backend developer"
    emp.salary = 10000
    emp.employee_status = "full time"
    assert_not  emp.save
  end

  test "email should not be empty " do
    emp = Employee.new
    emp.name = "abeer"
    emp.job = "backend developer"
    emp.salary = 10000
    emp.employee_status = "full time"
    assert_not  emp.save
  end

  test "salary should not be empty " do
    emp = Employee.new
    emp.name = "abeer"
    emp.email = "example@mail.com"
    emp.job = "backend developer"
    emp.employee_status = "full time"
    assert_not  emp.save
  end

  test "job should not be empty " do
    emp = Employee.new
    emp.name = "abeer"
    emp.salary = 10000
    emp.email = "example@mail.com"
    emp.employee_status = "full time"
    assert_not  emp.save
  end

  test "Salary less than 1000" do
    emp = Employee.new
    emp.name = "abeer"
    emp.salary = 9000
    emp.email = "example@mail.com"
    emp.employee_status = "full time"
    assert_not  emp.save
  end
  test "email invalid" do
    emp = Employee.new
    emp.name = "abeer"
    emp.salary = 9000
    emp.email = "examplemail.com"
    emp.employee_status = "full time"
    assert_not emp.save
  end
  
  
end
