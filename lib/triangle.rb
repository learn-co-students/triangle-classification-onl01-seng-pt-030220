class Triangle
  class InvalidTriangleError < StandardError; end
  
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    return :equilateral if equilateral?
    return :isosceles if isosceles?
    
    :scalene
  end

  def valid?  
    raise InvalidTriangleError if any_side_less_than_zero?
    raise InvalidTriangleError if sum_of_two_sides_less_than_third?

    true
  end

  private

  def equilateral?
    valid? && a == b && b == c
  end

  def isosceles?
    a == b || a == c || b == c
  end

  def any_side_less_than_zero?
    a <= 0 || b <= 0 || c <= 0
  end

  def sum_of_two_sides_less_than_third?
    (a + b <= c) || (a + c <= b) || (b + c <= a)
  end
end
