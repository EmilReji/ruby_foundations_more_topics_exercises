require 'minitest/autorun'

class Test < Minitest::Test
  def test_is_kind
    list = List.new
    assert_same(list, list.process)
  end
end

class List
  def process
    # self
    List.new
  end
end