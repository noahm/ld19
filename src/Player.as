package 
{
import net.flashpunk.FP;
import net.flashpunk.Entity;
import net.flashpunk.graphics.Spritemap;

public class Player extends Actor
{
  private var graphic_anim:Spritemap;
  
  public function Player(startX:int, startY:int)
  {
    // Set up the graphic
    height = width = 50;
    graphic_anim = new Spritemap(GP.SPRITE_PLAYER, width, height);
    graphic_anim.x = -width/2;
    graphic_anim.y = -height/2;
    graphic_anim.add('Default', [0,1,2,3,4,5,6,7], 8, true);
    graphic_anim.play('Default');
    graphic = graphic_anim;
    layer = GP.LAYER_PLAYER;
    x = startX;
    y = startY;
  }
  
}

}
