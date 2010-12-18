package
{
import net.thegamestudio.Point;
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
    
    var lineColor:uint = 0, outsideOther:Point, outsidePlayer:Point;
    if (Math.abs(Point.distance(player.position, other.position) - GP.TARGET_DISTANCE) < GP.TARGET_DISTANCE_TOLERANCE)
      lineColor = GP.GREEN_LINE;
    else
      lineColor = GP.RED_LINE;
    
    outsideOther = player.position.subtract(other.position);
    outsideOther.normalize(other.height/2 + 3);
    outsideOther = outsideOther.add(other.position);
    
    outsidePlayer = other.position.subtract(player.position);
    outsidePlayer.normalize(player.height/2 + 3);
    outsidePlayer = outsidePlayer.add(player.position);
    
    Draw.linePlus(outsidePlayer.x, outsidePlayer.y, outsideOther.x, outsideOther.y, lineColor, 0.61, 3);
  }
}

}
