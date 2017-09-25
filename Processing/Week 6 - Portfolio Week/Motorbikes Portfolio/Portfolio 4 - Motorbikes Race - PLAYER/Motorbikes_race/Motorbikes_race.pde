final color RED = color(255,0,0);
final color BLUE = color(0,0,255);
final color YELLOW = color(255,255,0);
final int RACING = 0;
final int FINISHED = 1;
int winRed = 0;
int winBlue = 0;
int winYellow = 0;
int gameMode = RACING;


class playerMotorbike   //new class parameters for player motorbike
{
 int x = 5;
 int y;
 int speed=0;
 int size=30;
 color colour;


// constructor Player Motorbike

playerMotorbike( int y, color colour)
{
 this.y = y;
 this.colour = colour;
 this.speed = (int)random(5.3);
}

void playerMove()  // steering value for player 
{
  if(keyPressed)
  {
  if( keyCode == RIGHT)
  {
  this.speed = (int)random(5.3);    //each key press add this value to speed
  x=x+speed;
  }
  }
}

void render()      // copy paste of drawing a motorbike from CPU motorbike
 {
   float wheelHeight = size/3;
   fill(colour);
   triangle(x,y,x+size,y,x+size/2,y-size/2);
   drawWheel(x,y,wheelHeight);
   drawWheel(x+size,y,wheelHeight);
 }
  void drawWheel(int x,int y,float size)
 {
    float inner = size*2/3;
    fill(0);
    ellipse(x,y,size,size);
    fill(255);
    ellipse(x,y,inner,inner);
 }
  boolean finished()
 {
    return x > width-10;
    
 }
 void update()    // update for player motorbike
 {
   if ( !finished() )
   {
   playerMove();
   }
   render();
 }

}



class motorbike
{
 int x = 5;  //members
 int y;
 int speed=2;
 int size=30;
 color colour;
 
// constructor CPU players
motorbike( int y, color colour )
{
    this.y = y;
    this.colour = colour;
    this.speed = (int)random(5.0);
}

void move()
{
  this.speed = (int)random(5.0);
  x = x + speed;
}
  
void render()
 {
   float wheelHeight = size/3;
   fill(colour);
   triangle(x,y,x+size,y,x+size/2,y-size/2);
   drawWheel(x,y,wheelHeight);
   drawWheel(x+size,y,wheelHeight);
 }
 
 void drawWheel(int x,int y,float size)
 {
   float inner = size*2/3;
   fill(0);
   ellipse(x,y,size,size);
   fill(255);
   ellipse(x,y,inner,inner);
 }
 
 
 
 boolean finished()
 {
   return x > width-10;
    
 }
 void update()
 {
   if ( !finished() )
   {
     move();
   }
   render();
 }
} //end of class description

void keyPressed()
{
    if ( gameMode == FINISHED && key == ' ' )
    {
      // reset motorbikes, and set gameMode back to RACING
      b1 = new motorbike( 50, RED);
      b2 = new motorbike( 80, BLUE);
      b3 = new playerMotorbike( 110, YELLOW);
      gameMode = RACING;
    }
}

motorbike b1;
motorbike b2;
playerMotorbike b3;

void setup()
{
  size(500,150);
  b1 = new motorbike( 50, RED);
  b2 = new motorbike( 80, BLUE);
  b3 = new playerMotorbike( 110, YELLOW);
}

void draw()
{
  background(125);
  if ( gameMode == RACING )
  {
    b1.update();
    b2.update();
    b3.update();
    
    if ( b1.finished() )
    {
       gameMode = FINISHED;
       winRed = winRed+1;          // add +1 win each time race finish as red
    }
    if ( b2.finished() )
    {
       gameMode = FINISHED;
       winBlue = winBlue+1;        // add +1 win each time race finish as blue
    }
    if ( b3.finished() )
    {
       gameMode = FINISHED;
       winYellow = winYellow+1;    // add +1 win each time race finish as yellow
    }
    
  }
  else
  {
    // finished
    text( "GAME OVER - press space to restart", width/2-100, height/2 );
    text( "SCOREBOARD", 200,15 );    //scoreboard
    text( "red:"+winRed,105,30 ); 
    text( "blue:"+winBlue,230,30 ); 
    text( "yellow:"+winYellow,355,30 ); 
  }
} 