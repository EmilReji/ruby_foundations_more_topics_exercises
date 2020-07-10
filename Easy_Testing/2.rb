require 'minitest/autorun'

class Test < Minitest::Test
  def test_downcase
    value = 'XYZ'
    assert_equal(value.downcase, 'xyz')
  end
end