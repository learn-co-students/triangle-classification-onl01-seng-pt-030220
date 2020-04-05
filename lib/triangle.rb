require 'pry'
class Triangle
  attr_accessor :a, :b, :c
  attr_reader :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end


  def kind
    if a + b > c && a + c > b && c + b > a
      if a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    else
        raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end



    # if !(a + b > c && a + c > b && c + b > a) || a.negative?() && b.negative?() && c.negative?()
    #   raise TriangleError
    # else
    #   if a == b && b == c
    #     :equilateral
    #   elsif a == b || a == c || b == c
    #     :isosceles
    #   else
    #     :scalene
    #   end
    # end