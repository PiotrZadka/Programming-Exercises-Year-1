class Alien
{
float x;
float y;
float speed = random(3,5);

final int ALIEN1 = color(0,255,0);
final int ALIEN2 = color(50,100,0);

Alien(float x, float y)
{
  this.x = x;
  this.y = y;
}  
void render()
{
 fill(ALIEN1);
 ellipse(x,y,30,30);
 fill(ALIEN2);
 ellipse(x,y,50,15);
}
boolean move()
{
x = x - speed;
y = y + random(-8,8);
return x > 0;
}

boolean update()
{
 render();
 return move();
}
}