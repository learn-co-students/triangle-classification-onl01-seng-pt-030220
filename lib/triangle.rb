class Triangle

attr_accessor  :a, :b, :c 

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
   end 
    
   def kind 
    triangle 
    if @a == b && @a == c 
       :equilateral
    elsif  @a == b || @a == c || @b == c 
      :isosceles 
    else 
      :scalene 
     end
   end 

   def triangle 
   if @a == 0 || @b == 0 || @c == 0 
      raise TriangleError
     elsif @a + @b <= @c || @b + @c <= a || @c + @a <= @b   
      raise TriangleError
    end 
  end 
    
   
   class TriangleError < StandardError 
     

  end 


end
