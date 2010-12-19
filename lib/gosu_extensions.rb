class Gosu::Image
  def draw_at(p, layer, params={})
    factor_x = params.delete(:factor_x) || 1
    factor_y = params.delete(:factor_x) || 1
    color    = params.delete(:color) || 0xffffffff
    mode     = params.delete(:mode)  || :default
    self.draw p.x, p.y, layer, factor_x, factor_y, color, mode
  end
end

class Gosu::Window
  def draw_solid_line(p1, p2, color, params={})
    layer = params.delete(:layer) || 0
    mode  = params.delete(:mode) || :default
    draw_line p1.x, p1.y, color, p2.x, p2.y, color, layer, mode
  end
end
