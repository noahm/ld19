class Actor
  attr_accessor :position, :s, :v, :a, :enabled, :graphic_anchor, :layer, :height, :width
  attr_reader :graphic
  def location; @position; end
  
  def initialize(x=0, y=0)
    @position = (@s = Point.new(x,y)).floor
    apply_defaults
  end
  
  def apply_defaults
    @s ||= Point.new
    @v ||= Point.new
    @a ||= Point.new
    @position ||= Point.new
    @graphic_anchor ||= Point.new
    @enabled ||= true
    @layer ||= 0
    @height ||= 0
    @width ||= 0
  end
  
  def update
    if @enabled
      get_input
      update_velocity
      update_position
    end
    @position = @s.floor
  end
  
  def get_input
  end
  
  def update_velocity
    # Apply dapening
    @v = @v * GP::World::Friction
    
    @v = @v + @a * $window.elapsed
  end
  
  def update_position
    @s = @s + @v * $window.elapsed
  end
  
  def draw
    @graphic.draw_at(@graphic_anchor+@position, @layer) unless @graphic.nil?
  end
end
