require 'minitest/autorun'

require_relative '2'

class Test_2 < Minitest::Test
  def test_1
    assert_equal(fields("Pete,201,Student"), ['Pete', '201', 'Student'])
  end
  
  def test_2
    assert_equal(fields("Pete \t 201    ,  TA"), ['Pete', '201', 'TA'])
  end
  
  def test_3
    assert_equal(fields("Pete \t 201"), ['Pete', '201'])
  end
  
  def test_4
    assert_equal(fields("Pete \t\t 201    , ,  TA"), ['Pete', '201', 'TA'])
  end
end