package 
{
import flash.geom.Point;
import net.flashpunk.Entity;

public class Actor extends Entity
{
  protected var s:Point, v:Point, a:Point;
  
  public function Actor()
  {
    s = new Point;
    v = new Point;
    a = new Point;
  }
  
}

}
