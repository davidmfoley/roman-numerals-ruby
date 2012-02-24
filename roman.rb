require 'minitest/unit'
require 'minitest/autorun'
class Fixnum
  def to_roman
    'I'
  end
end
class RomanNumeralsTests < MiniTest::Unit::TestCase
  def test_i
    assert_equal('I', 1.to_roman)
  end
end

