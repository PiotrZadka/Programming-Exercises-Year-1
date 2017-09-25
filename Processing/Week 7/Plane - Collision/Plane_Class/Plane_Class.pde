class Plane
{
  int x;
  int y;
  int speedX;
  int speedY;
  PImage img1, img2, img3, img4;


Plane(int x, int y)
{
  this.x = x;
  this.y = y;
  img1 = loadImage("plane1.png");
  img2 = loadImage("plane2.png");
  img3 = loadImage("plane3.png");
  img4 = loadImage("plane4.png");
}
void render()
{
}
void move()
{
 x = x+speedX;
 y = y+speedY;
}


void update()
{
render();
move();
}
}