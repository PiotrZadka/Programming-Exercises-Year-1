float x = 10;
float y = 10;
float size = 20;

void setup()
{
 size(200,200);
 drawSquares(x,y,size);
 drawCircles(x,y+10,size);
}



void drawSquares(float x, float y, float size)
{
for(int k = 0; k<=5; k++)
{
x=10;
y=y+20;
for(int i = 0; i<=5; i++)
  {
    rect(x,y,size,size);
    x=x+20;
  }

}
}

void drawCircles(float x, float y, float size)
{
  for(int k = 0; k<=5; k++)
  {
  x=20;
  y=y+20;
  for(int i = 0 ; i<=5; i++)
  {
  ellipse(x,y,size/2,size/2);
  x=x+20;
  }
  }
}