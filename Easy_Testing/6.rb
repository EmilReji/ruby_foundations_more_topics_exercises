require 'minitest/autorun'

class Test < Minitest::Test
  def test_exception
    assert_raises(NoExperienceError) { Employee.new.hire }
  end
end


class Employee
  def hire
    # raise NoExperienceError
    "blah"
  end
end

class NoExperienceError < StandardError
end
