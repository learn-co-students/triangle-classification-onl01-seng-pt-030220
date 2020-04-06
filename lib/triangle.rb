class Triangle
  #attr_accessor :l1,:l2,:l3
  def initialize(l1,l2,l3)
     @l1,@l2,@l3 =l1,l2,l3
  end

 def kind

    if ((@l1 + @l2) <= @l3 ||  (@l2 + @l3) <= @l1 || (@l1 + @l3) <= @l2 ||  (@l1 || @l2 || @l3) <= 0)
      begin
        raise TriangleError
      end
    else
      ## claculate if equilateral or isosceles or scalene
      if @l1==@l2 && @l1==@l3
        return :equilateral
      end
      if @l2 == @l3 && @l2 != @l1  || @l1 == @l2 && @l1 != @l3  || @l1 == @l3 && @l1 != @l2
         return :isosceles
      end
      if @l1 != @l2 || @l1 != @l3 || @l2 != @l3
          return :scalene
      end
    end

 end

 class TriangleError < StandardError

 end

end
