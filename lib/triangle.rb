class Triangle
  # write code here
def initialize(a1, a2, a3)
  @a1 = a1
  @a2 = a2 
  @a3 = a3
 end 
 
 def kind 
   if (@a1 + @a2) <= @a3 || (@a1 + @a3) <= @a2 || (@a2 + @a3) <= @a1 || (@a1 || @a2 || @a3) == 0
     begin
  raise TriangleError
end
elsif @a1 == @a2 && @a2 == @a3
   :equilateral
   elsif @a1 == @a2 && @a1 != @a3 || @a1 == @a3 && @a1 != @a2 || @a2 == @a3 && @a2 != @a1
   :isosceles
 elsif @a1 != @a2 && @a1 != @a3 && @a2 != @a3
 :scalene
 end
end

class TriangleError < StandardError
  end


end