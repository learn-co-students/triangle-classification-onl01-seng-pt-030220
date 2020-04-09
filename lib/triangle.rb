class Triangle
    attr_accessor :a, :b, :c

    def initialize(a, b, c)
      @a, @b, @c = a, b, c
    end

    def illegal_triangle
      if @a <= 0 || @b <= 0 || @c <= 0
        raise TriangleError, "size must be over 0."
      end
      if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
        raise TriangleError, "illegal triangle!"
      end
    end


    def kind
      illegal_triangle
      if @a == @b && @a == @c
        return :equilateral
      elsif @a == @b || @b == @c || @c== @a
        return :isosceles
      else
        return :scalene
     
      end
    end

    class TriangleError < StandardError
    end

end


# _____________________________________________________________________________________________________
                                                   #NOTES


=begin

Scalene triangle: 
A scalene triangle is a triangle 
that has no equal sides.

Isosceles triangle: 
An isosceles triangle is a triangle 
that has two equal sides.

Equilateral triangle: 
An equilateral triangle is a triangle 
that has three equal sides. 

=end

# __________________________________________________________________________________________

=begin

If a triangle has one right angle and two equal sides, 
we can call that triangle right isosceles triangle.

If a triangle has only acute angles and no equal sides, 
we can call that triangle acute scalene triangle.

If a triangle has one right angle and no equal sides, 
we can call that triangle right scalene triangle.

If a triangle has only acute angles and two equal sides, 
we can call that triangle acute isosceles triangle.

If a triangle has two equal sides and one obtuse angle, 
we can call that triangle obtuse isosceles triangle.

If a triangle has three equal sides and only acute angles, 
we can call that triangle acute equilateral triangle.

If a triangle has no equal sides and one obtuse angle, 
we can call that triangle obtuse scalene triangle.

=end