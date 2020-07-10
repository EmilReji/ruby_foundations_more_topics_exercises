require 'minitest/autorun'

class Test < Minitest::Test
  def test_is_instance
    value = '4'
    assert_instance_of(Integer, value)
  end
end