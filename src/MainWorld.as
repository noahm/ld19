package
{
import net.flashpunk.FP;
import net.flashpunk.World;

public class MainWorld extends World {
  public var player:Player;
  
  public function MainWorld() {
    add(new Background);
    add(player = new Player(FP.halfWidth, FP.halfHeight));
    add(new Others);
    
  }
}

}
