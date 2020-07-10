require 'minitest/autorun'

class Test < Minitest::Test
  def test_obj
    list = ['test', 'tst2']
    assert_includes(list, 'xyz')
  end
end