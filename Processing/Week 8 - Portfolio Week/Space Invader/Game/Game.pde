PImage background;
int x=0; //global variable background location
final int FINISHED = 1;
final int PLAYING = 0;
int gameMode = PLAYING;




Alien enemy1;  // new enemy object
Player player1;

void keyPressed()
{
    if(gameMode == PLAYING)
    {
      if(keyCode == UP)
      {
        player1.move(-5);
      }
      if(keyCode == DOWN)
      {
        player1.move(5);
      }
    }
    if(gameMode == FINISHED && key == ' ')
    {
     gameMode = PLAYING;
     enemy1 = new Alien(700,200);
     player1 = new Player(20,200);
    }
}


void setup()
{
 size(800,400);
 background = loadImage("spaceBackground.jpg");
 background.resize(width,height);
 enemy1 = new Alien (700,200);
 player1 = new Player(20,200);
 
}

void draw()
{
 if(gameMode == PLAYING)
 {
 image(background, x, 0); //draw background twice adjacent
 image(background, x+background.width, 0);
 x = x-4;
 if(x == -background.width)
 {
 x=0; //wrap background
 }
 if( enemy1.update() == false )
 {
   enemy1 = new Alien( width, random(50, height-100));
 }
 if(player1.crashed() == true)
 {
  gameMode = FINISHED;
  text("CRASHED, GAME OVER", width/2, height/2);
 }
player1.render();
}
}