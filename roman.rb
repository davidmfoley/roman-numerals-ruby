require 'minitest/unit'
require 'minitest/autorun'
class Fixnum
  def to_roman
    fives = self / 5
    ones = self % 5
    ('V' * fives) + ('I' * ones)
  end
end
class RomanNumeralsTests < MiniTest::Unit::TestCase
  def test_i
    assert_equal('I', 1.to_roman)
  end
  def test_ii
    assert_equal('II', 2.to_roman)
  end
  def test_v
    assert_equal('V', 5.to_roman)
  end
end

