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

  def inequality?
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

  def inequality_check(triangle_type)
    if inequality?
      raise TriangleError
    else
      return triangle_type
    end 
  end 

  def kind
    if equilateral?
      inequality_check(:equilateral)
    elsif scalene?
      inequality_check(:scalene)
    elsif isosceles?
      inequality_check(:isosceles)
    end
  end

  class TriangleError < StandardError
  end 
end
