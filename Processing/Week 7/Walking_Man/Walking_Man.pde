class Man
{
int x;
int y;
int speedX = 2;
PImage img1, img2, img3,img4;
int counter = 0;

Man(int x,int y)
{
  this.x = x;
  this.y = y;
  img1 = loadImage("walk1.gif");
  img2 = loadImage("walk2.gif");
  img3 = loadImage("walk3.gif");
  img4 = loadImage("walk4.gif");
}

void render()
{
  if(counter >= 0 && counter <= 15)
  {
  image(img1,x,y);
  }
  else if(counter > 15 && counter <= 30)
  {
  image(img2,x,y);
  }
  else if(counter > 30 && counter <= 45)
  {
  image(img3,x,y);
  }
  else if(counter > 45 && counter <= 60)
  {
  image(img4,x,y);
  }
  else
  {
  counter = 0;
  }
  counter = counter+1;
}

void move()
{
 x=x+speedX;
 if(x == width)
 {
 x=0;
 }
}
void update()
{
  render();
  move();
}
}

Man man1;  // object 1 


void setup()
{
  size(500,300);
  man1 = new Man(10,50);  // position x,y 
}

void draw()
{
  background(255);
  man1.update();
}