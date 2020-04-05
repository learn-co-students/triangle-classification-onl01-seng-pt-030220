class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    illegal_triangle
    if side_one == side_two && side_one == side_three
      :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
    else
      :scalene
    end
  end

  def illegal_triangle
    if side_one <= 0 || side_two <= 0 || side_three <= 0
      begin
        raise TriangleError
      end
    elsif side_one == nil || side_two == nil || side_three == nil
      begin
        raise TriangleError
      end
    elsif side_one + side_two <= side_three || side_one + side_three <= side_two || side_three + side_two <= side_one
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
  end
end
