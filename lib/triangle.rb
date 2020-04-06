require 'pry'
class Triangle

    attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if self.side_1 <= 0 || self.side_2 <= 0 || self.side_3 <= 0 
      raise TriangleError
    elsif (self.side_2 + self.side_3) <= self.side_1
      raise TriangleError
    elsif self.side_1 == self.side_2 && self.side_1 == self.side_3 && self.side_2 == self.side_3    
      :equilateral
    elsif self.side_1 < self.side_2 && self.side_2 == self.side_3 || self.side_1 > self.side_2 && self.side_1 == self.side_3 || self.side_1 == self.side_2 && self.side_1 > self.side_3
      :isosceles 
    elsif self.side_1.to_f != self.side_2.to_f && self.side_1.to_f != self.side_3.to_f 
      :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      'The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.'
    end
  end
end