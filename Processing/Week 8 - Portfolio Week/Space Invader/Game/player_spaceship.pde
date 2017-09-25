class Player
{
  float x;
  float y;

Player (float x, float y)
{
  this.x = x;
  this.y = y;
}
void move (float deltaY)
{
  y = y + deltaY;
  if( y < 0 )
  {
    y=0;
  }
  if( y > height - 20)
  {
    y = height - 20;
  }
}

boolean crashed()
{
 for ( int yPixel = (int)y; yPixel < (int)y + 20; yPixel++ )
 {
   color thisPixel = get( (int)x+60, yPixel);
   
   if(thisPixel == color(0,255,0) || thisPixel == color(50,100,0))
   {
     return true;
   }

 }
 return false;
}




void render()
{
   fill(255,0,0);
   rect(x,y,50,20);
   triangle(x+50,y,x+50,y+20,x+60,y+10);
   fill(0,0,100);
}
}