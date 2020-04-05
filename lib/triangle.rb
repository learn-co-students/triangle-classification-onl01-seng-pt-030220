class Triangle
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind 
    valid
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral 
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_3 == @side_2 
      :isosceles 
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3 
      :scalene 
    else
      raise TriangleError
    end 
  end
  
  def valid
    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      begin
        raise TriangleError
      end
    elsif side_1 == nil || side_2 == nil || side_3 == nil
      begin
        raise TriangleError
      end
    elsif side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_3 + side_2 <= side_1
      begin
        raise TriangleError
      end
    end
  end
  
  class TriangleError < StandardError
    
  end
  
end
