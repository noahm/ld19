package
{
import flash.geom.Point;
import net.flashpunk.FP;
import net.flashpunk.World;
import net.flashpunk.utils.Draw;

public class MainWorld extends World {
  public var player:Player;
  public var other:Others;
  
  public function MainWorld() {
    add(new Background);
    add(player = new Player(FP.halfWidth, FP.halfHeight));
    add(other = new Others);
    Draw.resetTarget();
  }
  
  override public function render():void {
    super.render();
    
    var lineColor:uint = 0;
    if (Math.abs(Point.distance(player.position, other.position) - GP.TARGET_DISTANCE) < GP.TARGET_DISTANCE_TOLERANCE)
      lineColor = GP.GREEN_LINE;
    else
      lineColor = GP.RED_LINE;
    trace(player.position.toString());
    Draw.linePlus(player.position.x, player.position.y, other.position.x, other.position.y, lineColor, 0.61, 2);
  }
}

}
