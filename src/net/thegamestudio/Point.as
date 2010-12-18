package net.thegamestudio
{
/*import flash.utils.getDefinitionByName;*/

/**
  * Written by Noah Manneschmidt because flash.geom.Point is rather stupid
  * I left out polar, offset, and interpolate
  * I added distanceTo and normalizeInPlace
  * I changed normalize to return a new point
  */
public class Point
{
  /*private var flash.geom.Point:Class = getDefinitionByName('flash.geom.Point') as Class;*/
  private var self:flash.geom.Point;
  
  public function Point(x:Number = 0, y:Number = 0)
  {
    self = new flash.geom.Point(x,y);
  }
  
  public function equals(p:Point):Boolean
  {
    return (self.x == p.x && self.y == p.y);
  }
  
  public function add(p:Point):Point
  {
    return new Point(self.x + p.x, self.y + p.y);
  }
  
  public function subtract(p:Point):Point
  {
    return new Point(self.x - p.x, self.y - p.y);
  }
  
  public function normalize(thickness:Number):Point
  {
    var p:flash.geom.Point = self.clone();
    p.normalize(thickness);
    return p;
  }
  
  public function normalizeInPlace(thickness:Number):void
  {
    self.normalize(thickness);
  }
  
  public function distanceTo(p:Point):Number
  {
    return flash.geom.Point.distance(self, new flash.geom.Point(p.x, p.y));
  }
  
  public function clone():Point
  {
    var p:flash.geom.Point = super.clone();
    return new Point(p.x, p.y);
  }
  
  public function toString():String
  {
    return self.toString();
  }
  
  public static function distance(p1:Point, p2:Point):Number
  {
    return flash.geom.Point.distance(new flash.geom.Point(p1.x, p1.y), new flash.geom.Point(p2.x, p2.y));
  }
  
  public function get x():Number { return self.x; }
  public function get y():Number { return self.y; }
  public function set x(newX:Number):void { self.x = newX; }
  public function set y(newY:Number):void { self.y = newY; }
}

}
