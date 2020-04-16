
class Triangle

attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    illegal_triangle

    if one == two && one == three
      :equilateral
    elsif one == two || one == three || two == three
      :isosceles
    else
      :scalene
    end
  end

  def illegal_triangle
    if one <= 0 || two <= 0 || three <= 0
        raise TriangleError
    elsif one == nil || two == nil || three == nil
        raise TriangleError
    elsif one + two <= three || one + three <= two || three + two <= one
        raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end