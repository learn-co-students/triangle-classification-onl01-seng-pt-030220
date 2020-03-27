class Triangle

  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def triangle_size_zero?
    return ((@length1 - @length2) - @length3) == 0 
  end 

  def sum_of_sides?
    return @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 < @length1    
  end

  def inequality_error?
    if triangle_size_zero? 
      return true
    elsif sum_of_sides?
      return true
    else
      return false
    end 
  end 

  def equilateral?
    return @length1 == @length2 && @length2 == @length3
  end 

  def scalene?
    return @length1 != @length2 && @length3 && @length2 != @length3 && @length1 && @length3 != @length1 && @length2
  end 

  def isosceles?
    return @length1 != @length2 || @length2 != @length3 || @length3 != @length1
  end 

  def kind
    if equilateral?
      if inequality_error?
        raise TriangleError
      else
        return :equilateral
      end 
    elsif scalene?
      if inequality_error?
        raise TriangleError
      else 
        return :scalene
      end 
    elsif isosceles?
      if inequality_error?
        raise TriangleError
      else
        return :isosceles
      end 
    end
  end

  class TriangleError < StandardError
  end 
end
