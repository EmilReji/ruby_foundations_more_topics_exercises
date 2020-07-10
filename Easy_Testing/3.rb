require 'minitest/autorun'

class Test < Minitest::Test
  def test_nil
    value = 3
    assert_nil value
  end
end