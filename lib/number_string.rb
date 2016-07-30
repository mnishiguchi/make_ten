# This class is a wrapper of a number so that a number can hold its
# calculation history as a string.
# We can use the four basic arithmetic operators (+. -, * and /)
# on an instance of this class.
class NumberString
  attr_accessor :value, :string

  def initialize(value=nil)
    unless value.nil?
      @value = value
      @string = value.to_s
    end
  end

  def +(other)
    result = NumberString.new
    result.value = @value + other.value
    result.string = "(#{@string} + #{other.string})"
    result
  end

  def -(other)
    result = NumberString.new
    result.value = @value - other.value
    result.string = "(#{@string} - #{other.string})"
    result
  end

  def *(other)
    result = NumberString.new
    result.value = @value * other.value
    result.string = "(#{@string} * #{other.string})"
    result
  end

  def /(other)
    result = NumberString.new
    result.value = @value / other.value
    result.string = "(#{@string} / #{other.string})"
    result
  end

  def divisible(other)
    (other.value != 0) && (@value % other.value == 0)
  end
end
