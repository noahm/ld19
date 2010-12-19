class Player < Actor
  def initialize(x,y)
    @height = @width = 50
    # add image
    @graphic = Image.load_tiles($window, GP::Sprite::Player, @height, @width, false)
    @graphic_animate_speed = 10
    @graphic_anchor = Point.new @height/-2
    @layer = GP::Layer::Player;
    super(x,y)
  end
  
  def draw
    @graphic[Gosu::milliseconds / (1000/@graphic_animate_speed) % @graphic.size].draw_at @graphic_anchor+@position, @layer
  end
  
  def get_input
    movement = Point.new
    movement.x -= 1 if $window.button_down? Gosu::Button::KbLeft
    movement.x += 1 if $window.button_down? Gosu::Button::KbRight
    movement.y -= 1 if $window.button_down? Gosu::Button::KbUp
    movement.y += 1 if $window.button_down? Gosu::Button::KbDown
    @a = movement.normalize(1) * GP::World::PlayerAcceleration
  end
end
