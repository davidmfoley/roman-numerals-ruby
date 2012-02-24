require 'minitest/unit'
require 'minitest/autorun'
class Fixnum
  def to_roman
    'I' * self
  end
end
class RomanNumeralsTests < MiniTest::Unit::TestCase
  def test_i
    assert_equal('I', 1.to_roman)
  end
  def test_ii
    assert_equal('II', 2.to_roman)
  end
end

