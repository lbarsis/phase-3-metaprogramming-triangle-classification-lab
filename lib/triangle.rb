require 'pry'

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c    
  end

  def kind
    if (a > 0 && b > 0 && c > 0) && (a + b > c && b + c > a && c + a > b)
      if a == b && b == c
        :equilateral
      elsif a==b or b==c or a==c
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
