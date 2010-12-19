module GP
  module Sprite
    Background = './assets/graphics/bg.png'
    Player     = './assets/graphics/player.png'
    Others     = './assets/graphics/others.png'
  end
  
  #/** Controls the layering of game elements */
  module Layer
    Player = 1;
    Others = 2;
    Background = 10;
  end
  
  #/** Various game properties */
  module World
    Height = 480
    Width = 640
    
    #/** World friction */
    Friction = 0.5;
  
    #/** How fast the player moves */
    PlayerAcceleration = 6000;
  
    #/** How close to an Other the player should be */
    TargetDistance = 150;
  
    #/** How forgiving we are about the distance */
    TargetDistanceTolerance = 40;
  end
  
  module UI
    #/** UI colors and styles in ARGB format */
    GreenLine = 0x9B4CCCC4;
    RedLine = 0x9BFF5425;
  end
end