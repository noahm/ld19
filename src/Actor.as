package 
{
import flash.geom.Point;
import net.flashpunk.FP;
import net.flashpunk.Entity;

public class Actor extends Entity
{
  protected var s:Point = new Point, v:Point = new Point, a:Point = new Point, _enabled:Boolean = true;
  
  public function Actor() {
  }
  
  override public function update():void {
    if (Enabled)
    {
      getInput();
      updateVelocity();
      updatePosition();
      super.update();
    }
    x = Math.floor(s.x);
    y = Math.floor(s.y);
  }
  
  protected function getInput():void { }
  
  protected function updateVelocity():void {
    // Apply dampening
    v = new Point(v.x * GP.FRICTION, v.y * GP.FRICTION);
    
    v.y += a.y * FP.elapsed;
    v.x += a.x * FP.elapsed;
  }
  
  protected function updatePosition():void {
    
    s.x += v.x * FP.elapsed;
    s.y += v.y * FP.elapsed;
  }
  
  public function get position():Point { return s.clone(); }
  public function get velocity():Point { return v.clone(); }
  public function get acceleration():Point { return a.clone(); }
  
  public function get Enabled():Boolean { return _enabled; }
  
  public function set Enabled(b:Boolean):void {
    _enabled = b;
    collidable = b;
  }
}

}
