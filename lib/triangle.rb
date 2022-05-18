require 'pry'
class Triangle 
  attr_reader :kind
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @arr = [@side1,@side2,@side3]
  end
  def kind
    sort = @arr.sort
    set = @arr.uniq


    
    if set.length == 1
      kind = :equilateral
    elsif set.length == 2
      kind = :isosceles
    elsif set.length == 3
      kind = :scalene
    end

    if sort[0]+sort[1]<sort[2]
      raise_error ='error'
    end
    
    
    # binding.pry
  end
  
end
e = Triangle.new(1,1,1)
i = Triangle.new(1,1,1.5)
s = Triangle.new(2,1,3)
f = Triangle.new(1,2,4)


binding.pry
