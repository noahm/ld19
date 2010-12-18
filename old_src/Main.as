package
{
import net.flashpunk.FP;
import net.flashpunk.Engine;

public class Main extends Engine {
  
  public function Main() {
    super(640, 480, 60, false);
    FP.screen.color = 0x000000;
    FP.world = new MainWorld;
  }
}

}
