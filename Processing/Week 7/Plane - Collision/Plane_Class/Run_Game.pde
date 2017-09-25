Plane planeTopLeft;

void setup()
{
  size(500,500);
  planeTopLeft = new Plane(250,250);  
}

void draw()
{
  background(125);
  planeTopLeft.update();
}