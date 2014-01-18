require 'minitest/unit'
require 'minitest/autorun'
class Fixnum
  def to_roman
    vals = {
      'M' => 1000,
      'D' => 500,
      'C' => 100,
      'L' => 50,
      'X' => 10,
      'V' => 5,
      'I' => 1,
    }
    remainder = self
    roman = ""

    vals.each do |letter, divisor|
      count = remainder / divisor
      roman += letter * count
      remainder = remainder % divisor
    end

    roman = roman.gsub('IIII', 'IV')
    roman = roman.gsub('CCCC', 'CD')
    roman = roman.gsub('VIV', 'IX')
    roman = roman.gsub('DCD', 'CM')
  end
end


class RomanNumeralsTests < MiniTest::Unit::TestCase
  def self.test roman, numeric
    define_method "test_#{roman}" do
      assert_equal(roman, numeric.to_roman)
    end
  end

  test('I', 1)
  test('II', 2)
  test('V', 5)
  test('X', 10)
  test('IV', 4)
  test('XIV', 14)
  test('IX', 9)
  test('XX', 20)
  test('XVI', 16)
  test('LVIII', 58)
  test('CC', 200)
  test('MM', 2000)
  test('MDLVI', 1556)
  test('MCD', 1400)
  test('MCM', 1900)
  test('MCM', 1900)
end

