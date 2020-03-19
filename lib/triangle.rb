class Triangle
  attr_accessor :side1, :side2, :side3
  # triangle code
  def initialize(s1,s2,s3)
    @side1, @side2, @side3= s1,s2,s3
  end
  def kind
    if @side1 <= 0 || @side2 <=0 || @side3 <=0
      raise TriangleError
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      raise TriangleError
    end
    test = nil
    if @side1 == @side2 && @side1 == @side3 && @side2 == @side3
      test = :equilateral
    elsif @side1 == @side2 && @side1 != @side3 && @side2 != @side3
      test = :isosceles
    elsif @side1 == @side3 && @side1 != @side2 && @side3 != @side2
      test = :isosceles
    elsif @side2 == @side3 && @side2 != @side1 && @side3 != @side1
      test = :isosceles
    else
      test = :scalene
    end
    test
  end
  class TriangleError < StandardError
    # triangle error code
  end
end
