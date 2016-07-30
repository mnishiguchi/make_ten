class NumberString
  attr_accessor :number, :string

  def initialize(number=nil)
    unless number.nil?
      @number = number
      @string = number.to_s
    end
  end

  def add(other)
    result = NumberString.new
    result.number = @number + other.number
    result.string = "(#{@string} + #{other.string})"
    result
  end

  def sub(other)
    result = NumberString.new
    result.number = @number - other.number
    result.string = "(#{@string} - #{other.string})"
    result
  end

  def mul(other)
    result = NumberString.new
    result.number = @number * other.number
    result.string = "(#{@string} * #{other.string})"
    result
  end

  def div(other)
    result = NumberString.new
    result.number = @number / other.number
    result.string = "(#{@string} / #{other.string})"
    result
  end
end
