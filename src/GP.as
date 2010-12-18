package 
{
/** These are the game properties and constants */
public class GP
{
  public static const WORLD_HEIGHT:int = 480;
  public static const WORLD_WIDTH:int = 640;
  
  /** The sprite of the player. */
  [Embed(source = '../assets/graphics/player.png')] public static const SPRITE_PLAYER:Class;
  
  /** The sprite of the others */
  [Embed(source = '../assets/graphics/others.png')] public static const SPRITE_OTHERS:Class;
  
  /** The bacground image */
  [Embed(source = '../assets/graphics/bg.png')]     public static const SPRITE_BG:Class;
  
  /** Controls the layering of game elements */
  public static const LAYER_PLAYER:int = 1;
  public static const LAYER_OTHERS:int = 2;
  public static const LAYER_BG:int = 10;
  
  /** Various game properties */
  
  /** World friction */
  public static const FRICTION:Number = 0.5;
  
  /** How fas the player moves */
  public static const PLAYER_ACCELERATION:int = 6000;
  
  /** How close to an Other the player should be */
  public static const TARGET_DISTANCE:int = 150;
  
  /** How forgiving we are about the distance */
  public static const TARGET_DISTANCE_TOLERANCE:int = 40;
  
  /** UI colors and styles */
  
  public static const GREEN_LINE:uint = 0x4CCCC4;
  public static const RED_LINE:uint = 0xFF5425;
}

}
