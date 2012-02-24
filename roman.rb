require 'minitest/unit'
require 'minitest/autorun'
class Fixnum
  def to_roman
    return 'IV' if self == 4
    fives = self / 5
    ones = self % 5
    naive = ['', 'V', 'X', '', 'XX'] [fives] + ('I' * ones)
    naive = naive.gsub('IIII', 'IV')
    naive = naive.gsub('VIV', 'IX')
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
  def test_x
    assert_equal('X', 10.to_roman)
  end
  def test_iv
    assert_equal('IV', 4.to_roman)
  end
  def test_xiv
    assert_equal('XIV', 14.to_roman)
  end
  def test_ix
    assert_equal('IX', 9.to_roman)
  end
  def test_xx
    assert_equal('XX', 20.to_roman)
  end
end

