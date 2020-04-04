class Triangle
 
  attr_reader :x, :y, :z
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    if x + y <= z || y + z <= x || x + z <= y
      raise TriangleError
    elsif x <= 0 || y <= 0 || z <= 0
      raise TriangleError
    elsif x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    else 
      :scalene
    end
  end
  
  class TriangleError < StandardError
    # triangle error code
    def message
      "This is not a valid triangle. Please try again."
    end
  end
  
end
