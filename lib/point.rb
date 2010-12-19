class Point
  # Instance variables
  attr_reader :x, :y
  
  # Instance methods
  def initialize(x=0, y=nil)
    @x = x.to_f;
    @y = y.nil? ? @x : y.to_f
  end
  
  # enforce float
  def x=(newX)
    ensure_valid newX
    @x = newX.to_f
  end
  
  def y=(newY)
    ensure_valid newY
    @y = newY.to_f
  end
  
  def to_s
    "(#{@x}, #{@y})"
  end
  
  def inspect
    "Point<x:#{@x}, y:#{@y}>"
  end
  
  def ==(p)
    return false unless p.is_a? Point or p.respond_to? :to_point
    p = p.to_point unless p.is_a? Point
    @x == p.x and @y == p.y
  end
  
  def -@ # shorthand for 'negate', is called automatically by -point
    Point.new(-@x, -@y)
  end
  
  def +(number_or_point)
    ensure_valid number_or_point
    number_or_point = Point.new number_or_point if number_or_point.respond_to? :to_f and not number_or_point.is_a? Point
    raise ArgumentError, "Unable to convert #{number_or_point.class} to Point" unless number_or_point.is_a? Point
    Point.new number_or_point.x + @x, number_or_point.y + @y
  end
  
  def -(number_or_point)
    self + -number_or_point
  end
  
  def *(number)
    ensure_valid number
    Point.new @x*number, @y*number
  end
  
  def /(number)
    ensure_valid number
    raise ArgumentError, "Who do you think you are, trying to divide by zero?"# if number==0
    Point.new @x/number, @y/number
  end
  
  def length
    Math.sqrt((@x*@x)+(@y*@y))
  end
  
  def normalize!(length)
    ratio = length / self.length
    unless ratio.nan? or ratio.infinite?
      @x *= ratio
      @y *= ratio
    end
    return self
  end
  
  def normalize(length)
    self.clone.normalize! length
  end
  
  def floor!
    @x = @x.floor
    @y = @y.floor
    return self
  end
  
  def floor
    self.clone.floor!
  end
  
  def distance_to(p)
    raise ArgumentError, "Argument must be a Point" unless p.is_a? Point
    (self - p).length
  end
  
  # Class methods
  def self.distance(p1, p2)
    raise ArgumentError, "Arguments must be Points" unless p1.is_a? Point and p2.is_a? Point
    (p2 - p1).length
  end
  
  private # methods
  def ensure_valid(f)
    throw ArgumentError, "Bad value: #{f} is not valid" if f.is_a? Float and (f.nan? or f.infinite?)
  end
end
