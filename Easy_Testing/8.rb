require 'minitest/autorun'

class Test < Minitest::Test
  def test_is_kind
    value = 4
    assert_kind_of(Numeric, value)
  end
end