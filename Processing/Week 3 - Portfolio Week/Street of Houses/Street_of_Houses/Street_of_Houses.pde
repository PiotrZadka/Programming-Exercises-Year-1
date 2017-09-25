void setup()
{
//draw street of houses
size(700,700);
drawStreet(50,50);
}

void drawStreet(float x, float y)
  {
  for(int c=0;c<8; c++)  //draw 8 small houses
  {
  drawHouse(x+c*60,y,50);  
  }
  for(int c=0;c<6; c++) //draw 6 big houses
  {
  drawHouse(x+c*80,y+150,50);  
  }
}
void drawHouse(float x, float y, float size)
{
walls(x,y,size); //draw walls
roof(x,y,size); //draw roof + top window
door(x,y,size); //draw door
windows(x,y,size); //draw windows
}
                
                
                void walls(float x, float y, float size) //draw walls
                {
                rect(x,y,size,size);
                }
                
                void roof(float x, float y, float size)  //draw roof + window
                {
                float grid=size*0.1;
                triangle(x,y,size);
                rWindow(x+grid*5,y-grid*1.5,grid*1.5);
                }
                void triangle(float x,float y,float size)  //draw roof
                {
                float h = size*0.5;
                line(x,y,x+size,y);
                line(x,y,x+h,y-h);
                line(x+size,y,x+h,y-h);
                }
                          void rWindow(float x,float y,float diameter)  //draw roof window
                          {
                          ellipse(x,y,diameter,diameter); 
                          }
                          
                          void door(float x, float y,float size)
                          {
                          float grid=size*0.1;
                          rect(x+grid,y+grid*5, grid*3, grid*5);
                          }
                          void windows(float x, float y, float size)
                          {
                          float grid=size*0.1;
                          rect(x+grid*5,y+grid,grid*4, grid*3); // upstairs window
                          rect(x+grid*5, y+grid*5, grid*4, grid*3); //downstair window 
                          }
  