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
}

}
