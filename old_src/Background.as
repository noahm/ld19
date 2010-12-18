package 
{
import net.flashpunk.Entity;
import net.flashpunk.graphics.Image;

public class Background extends Entity
{
  
  public function Background()
  {
    graphic = new Image(GP.SPRITE_BG);
    layer = GP.LAYER_BG;
    x=0;
    y=0;
  }
  
}

}
