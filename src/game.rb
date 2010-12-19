include Gosu
class Game < Window
  def initialize
    $window = self
    init_engine
    super(640, 480, false)
    self.caption = 'ld19'
    @background = Image.new self, GP::Sprite::Background, false
    add(@player = Player.new(GP::World::Width/2, GP::World::Height/2))
    add(@other = Others.new)
  end
  
  def update
    close if button_down? Button::KbEscape
    @entities.keys.each do |e|
      e.update
    end
    @entities_to_remove.keys.each do |e|
      @entities.delete e
    end
    @entities_to_remove = {}
  end
  
  def draw
    @background.draw(0,0,0)
    @entities.keys.each do |e|
      e.draw
    end
    outside_other  = (@player.position - @other.position).normalize(@other.width/2 + 3) + @other.position
    outside_player = (@other.position - @player.position).normalize(@player.width/2 + 3) + @player.position
    if (@player.position.distance_to(@other.position) - GP::World::TargetDistance) < GP::World::TargetDistanceTolerance
      line_color = GP::UI::GreenLine
    else
      line_color = GP::UI::RedLine
    end
    draw_solid_line outside_other, outside_player, line_color
  end
  
  # Game engine stuff to follow
  def init_engine
    @entities = {}
    @entities_to_remove = {}
  end
  
  def add(entity)
    raise ArgumentError, "#{entity} is not a proper Entity" unless entity.respond_to? :draw and entity.respond_to? :update
    @entities[entity] = true
  end
  
  def remove(entity)
    @entities_to_remove[entity] = true
  end
  
  def elapsed
    self.update_interval/1000.0
  end
end
