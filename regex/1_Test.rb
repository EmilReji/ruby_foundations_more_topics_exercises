require 'minitest/autorun'

require_relative '1'

class OneTest < Minitest::Test
  def test_correct_url
    assert url?('http://launchschool.com')
  end
  
  def test_correct_url_2
    assert url?('https://example.com')
  end
  
  def test_correct_url_3
    assert url?('https://example.com/blah/blah')
  end
  
  def test_extras_after
    refute url?('https://example.com hello')
  end
  
  def test_extras_before
    refute url?('   https://example.com')
  end
end