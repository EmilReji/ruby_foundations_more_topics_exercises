require 'minitest/autorun'

class Test < Minitest::Test
  def test_empty_obj
    list = ['blah']
    assert_empty list
  end
end