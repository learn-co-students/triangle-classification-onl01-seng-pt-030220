require "pry"

class Triangle
  # write code here

attr_accessor :a, :b, :c 

def initialize(a, b, c)
 @a = a 
 @b = b 
 @c = c 
end 

def kind 
  validate 
    if a == b && a == c 
      :equilateral
    elsif a == b || a == c || b == c  
      :isosceles
    else
      :scalene                        
    end
end

def validate 
if ((a<=0) || (b<=0) || (c<=0)) || (!((a+b) > c) || !((c+b) > a) || !((c+a) > b))
  raise TriangleError 
end
end 


class TriangleError < StandardError 
  
end

end
