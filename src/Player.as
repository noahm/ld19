package 
{
import net.flashpunk.Entity;
import net.flashpunk.graphics.Spritemap;

public class Player extends Entity
{
  private var graphic_anim:Spritemap;
  
  public function Player()
  {
    // Set up the graphic
    graphic_anim = new Spritemap(GP.SPRITE_PLAYER, 50, 50);
    graphic_anim.add('Default', [0,1,2,3,4,5,6,7], 10, true);
    graphic_anim.play('Default');
    graphic = graphic_anim;
  }
  
}

}
