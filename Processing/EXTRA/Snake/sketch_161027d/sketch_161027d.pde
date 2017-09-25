//EtchySketch
//arrow keys to draw
float x = random(0,500);
float y = random(0,500);
float deltaX, deltaY;
float speed = 10;
float rX = random(10,490);
float rY = random(10,490);

void setup(){
size(500,500);
background(255,255,255); //background white x=200;
strokeWeight(10);
deltaX = 1;
deltaY = 0;
collisionBlock();

}
void draw(){
  x = x+deltaX;
  y = y+deltaY;
  background(255,255,255);
  drawSnake(x,y);
  randomBlock(rX,rY); 
  
}


void drawSnake(float x, float y)
{
stroke(0,0,0);
point(x,y);
}

void collisionBlock()
{
  
}

void randomBlock(float rX, float rY)
{
stroke(255,0,0);
point(rX,rY);
}


void keyPressed(){
if(key == CODED)
{
if (keyCode == UP && y>=0)
{ 
  deltaY = -1;
  deltaX = 0;
}
else if(keyCode == DOWN && y<=500)
{
  deltaY = 1;
  deltaX = 0;
}
else if (keyCode == LEFT && x>=0)
{
  deltaX = -1;
  deltaY = 0;
}
else if (keyCode == RIGHT && x<=500)
{
  deltaX = 1;
  deltaY = 0;
}
} 
}