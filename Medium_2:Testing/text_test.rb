require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open("sample_text.txt")
    @text = @file.read
    @text_obj = Text.new(@text)
  end
  
  def test_swap
    before_e_count = @text.count('e')
    before_a_count = @text.count('a')
    new_str = @text_obj.swap('a', 'e')
    after_e_count = new_str.count('e')
    assert_equal(before_e_count + before_a_count, after_e_count)
  end
  
  def test_word_count
    expected = @text.split.count
    actual = @text_obj.word_count
    assert_equal(expected, actual)
  end
  
  def teardown
    @file.close
    puts "\nFile has been closed: #{@file.closed?}"
  end
end
