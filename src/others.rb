class Others < Actor
  def initialize(x=80,y=80)
    @height = @width = 60
    # add image
    @graphic = Image.load_tiles($window, GP::Sprite::Others, @height, @width, false)
    @graphic_animate_speed = 10
    @graphic_anchor = Point.new @height/-2
    @layer = GP::Layer::Others;
    super(x,y)
  end

  def draw
    @graphic[Gosu::milliseconds / (1000/@graphic_animate_speed) % @graphic.size].draw_at @graphic_anchor+@position, @layer
  end
end