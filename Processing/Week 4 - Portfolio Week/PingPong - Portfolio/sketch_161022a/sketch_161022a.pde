float rectX, rectY, rectW, rectH;
float rectX2, rectY2, rectW2, rectH2;
float x = 350;           //ball x position
float y = 250;
float deltaX = random(5);  //ball x direction is right
float deltaY = random(-5,5);  //ball y direction is down 

void setup() 
{
size(700, 500); 
rectW = 50;      // left Controller parameters
rectH = 200;
rectX = 10;
rectY = 150;

rectW2 = 50;     // right Controller parameters
rectH2 = 200;
rectX2 = 640;
rectY2 = 150;

}


void keyPressed()
{
    if(key == 't')   // starts new game
    {
    newGame();
    }
    if(key == 'q')     // Left Controller UP
    {
    rectY=rectY-20;
    }
    if(rectY<=0)
    {
    rectY=0;
    }
    if(key == 'a')    // Left Controller DOWN
    {
    rectY=rectY+20;
    }
    if(rectY>= height-rectH)
    {
    rectY=height-rectH-1;
    }
    
    if(keyCode == UP)     // Right Controller UP
    {
    rectY2=rectY2-20;
    }
    if(rectY2<=0)
    {
    rectY2=0;
    }
    if(keyCode == DOWN)    // Right Controller DOWN
    {
    rectY2=rectY2+20;
    }
    if(rectY2>= height-rectH2)
    {
    rectY2=height-rectH2-1;
    }
}

void newGame()    // reset all variables to the original state
{
background(0,150,0);
rect(rectX,rectY,rectW,rectH);
rect(rectX2,rectY2,rectW2,rectH2);
x=350;
y=250;
deltaX = random(-5,5); 
deltaY = random(-5,5);

rectW = 50;      // left Controller parameters
rectH = 200;
rectX = 10;
rectY = 150;

rectW2 = 50;     // right Controller parameters
rectH2 = 200;
rectX2 = 640;
rectY2 = 150;
}


void draw()          // drawing both players and ball
{
  background(0,150,0);
  rect(rectX,rectY,rectW,rectH);
  rect(rectX2,rectY2,rectW2,rectH2);
  updateBall(); 
}


void updateBall()    // ball projectile
{
  ellipse(x,y,20,20);
  x = x + deltaX; 
  y = y + deltaY;
  bounceOffWalls();
  collisionRightBat();
  collisionLeftBat();
}

void bounceOffWalls()
{
  if (y>=height || y<=0)
  {
    deltaY = -deltaY;
  }
  if (x>=width || x<=0 )
  {
  x=350;
  y=250;
  deltaY=0;
  deltaX=0;
  }
  if(x<=0)
  {
  x=350;
  y=250;
  deltaY=0;
  deltaX=0;
  }
  
}

void collisionRightBat()
{
  if (x >= rectX2-10)                          // right bat collision  (need to add -ball size/2)
  {
  if (y >= rectY2 && y <= (rectY2+rectH2))
  {
    deltaX = -deltaX;
  }
  }
}

void collisionLeftBat()
{
  if (x <= rectX+60)                          // left bat collision (need to add +ball size/2)
  {
  if (y >= rectY && y <= (rectY+rectH))
  {
    deltaX = -deltaX;
  }
  }
}