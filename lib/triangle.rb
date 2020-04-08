class Triangle
  # write code here
  # triangle code
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length, @width, @height = length, width, height
  end

  def kind
    check_triangle
    # check_two
    if length == width && width == height && height == length
       :equilateral
    elsif length == width && height < length || width == height && length < width || height == length && width < height
      :isosceles
    # elsif length < width && height < length || width < height && length < width || height < length && width < height
    else
      :scalene
    # else length > width && height < length || width > height && length < width || height > length && width < height
      # :scalene
    end

  end

  def check_triangle

    if length <= 0 || height <= 0 || width <= 0
      raise TriangleError
    elsif height + length < width || width + height < length || length + width < height
      raise TriangleError
    elsif height + length == width || width + height == length || length + width == height
      raise TriangleError
      end
      #In mathematics, the triangle inequality states that for any triangle,
      #the sum of the lengths of any two sides must be greater than or equal to the length of the remaining side.
    end

  # def check_two
  #   if height + length < width || width + height < length || length + width < height || length + height = width
  #       raise TriangleError
  #       end
  #   end



  class TriangleError < StandardError
    # triangle error code
  end #End of TriangleError Class

end # End of Triangle class
