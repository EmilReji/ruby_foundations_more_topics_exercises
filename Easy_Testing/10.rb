require 'minitest/autorun'

class Test < Minitest::Test
  def test_is_kind
    list = ['test']
    refute_includes(list, 'xyz')
  end
end