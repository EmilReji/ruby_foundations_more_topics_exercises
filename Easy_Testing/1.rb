require 'minitest/autorun'

class Test < Minitest::Test
  def setup
    
  end
  
  def test_odd
    value = 9
    assert value.odd?
  end
end