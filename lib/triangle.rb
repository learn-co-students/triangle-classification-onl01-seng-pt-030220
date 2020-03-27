class Triangle

  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if equilateral?
      inequality_check(:equilateral)
    elsif isosceles?
      inequality_check(:isosceles)
    else
      inequality_check(:scalene)
    end
  end
  
  def equilateral?
    return side1 == side2 && side2 == side3
  end 

  def isosceles?
    side1 == side2 || side2 == side3 || side3 == side1
  end 

  def inequality_check(triangle_type)
    if inequality?
      raise TriangleError
    else
      return triangle_type
    end 
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

  def triangle_size_zero?
    return ((side1 - side2) - side3) == 0 
  end 

  def sum_of_sides?
    return side1 + side2 <= side3 || 
           side1 + side3 <= side2 || 
           side2 + side3 <= side1    
  end

  class TriangleError < StandardError
  end 
end
