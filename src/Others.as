package 
{
import net.flashpunk.FP;
import net.flashpunk.Entity;
import net.flashpunk.graphics.Spritemap;

public class Others extends Actor
{
  private var graphic_anim:Spritemap;
  
  public function Others(startX:int = 80, startY:int = 80)
  {
    height = width = 60;
    graphic_anim = new Spritemap(GP.SPRITE_OTHERS, width, height);
    graphic_anim.x = -width/2;
    graphic_anim.y = -height/2;
    graphic_anim.add('Default', [0,1,2,3,4,5,6,7], 10, true);
    graphic_anim.play('Default');
    graphic = graphic_anim;
    layer = GP.LAYER_OTHERS;
    x = startX;
    y = startY;
  }
  
}

}
