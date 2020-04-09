class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a 
    @b = b
    @c = c
  end
  def kind
    if @a <= 0 || @b <= 0 || @c <= 0 || (@a + @b) <= @c || (@a + @c) <= @b || (@b + @c) <= @a
     # begin
        raise TriangleError
      #rescue TriangleError => error
      #puts error.message
      #end
    elsif @a == @b && @a==@c
      return :equilateral
    elsif (@a==@b && @a != @c) || (@b==@c && @b != @a) || (@a==@c && @a != @b)
    return :isosceles
  elsif (@a != @b) && (@b != @c) && (@a != @c)
    return :scalene
  end
end
class TriangleError < StandardError
  def message
     "You're not smarter than a fifth grader."
  end
end
end
