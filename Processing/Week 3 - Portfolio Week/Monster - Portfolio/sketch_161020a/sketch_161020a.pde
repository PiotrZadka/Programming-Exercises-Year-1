void setup () 
{
size(500,300);
scaleMonster(10,50,50,1);  //x,y,size,scale
}

void scaleMonster(float x, float y,float size, float scale) //move and scale
{
for(int i=0; i<3; i++)
  {
  drawMonster(x,y,size,scale);
  scale = scale+1;       //scale factor
  x=x+50*scale;          //distance between monsters also scaled but can be fixed if needed.
  }
}

void drawMonster(float x, float y,float size, float scale)
{
drawBody(x,y,size,scale); 
drawNose(x,y,size,scale);
drawEyes(x,y,size,scale);
drawHLine(x,y,size,scale);
drawHat(x,y,scale);
drawLHand(x-15*scale,y+50*scale,scale);     //scale Left hand
drawRHand(x+15*scale,y+50*scale,scale);     //scale right hand
}


              void drawBody(float x,float y,float size,float scale)
              {
              fill(0,250,0);
              rect(x,y,size*scale,(size+20)*scale);  
              }
              void drawNose(float x, float y,float size, float scale)
              {
              fill(250,0,0);
              ellipse(x+25*scale,y+20*scale,(size/5)*scale,(size/5)*scale);   
              }
              void drawEyes(float x, float y, float size, float scale)
              {
              fill(255,255,255);
              ellipse(x+12*scale,y+10*scale,(size/3)*scale,(size/3)*scale); 
              ellipse(x+38*scale,y+10*scale,(size/3)*scale,(size/3)*scale);  //white eyes
              fill(0,0,0);
              ellipse(x+14*scale,y+14*scale,(size/7)*scale,(size/7)*scale);  //black dots in eyes
              ellipse(x+36*scale,y+14*scale,(size/7)*scale,(size/7)*scale);
              }
              void drawHLine(float x, float y, float size, float scale)
              {
              line(x,y+size*scale,x+size*scale,y+size*scale);
              }
              void drawHat(float x,float y,float scale)
              {
              drawTriangle(x,y,scale);
              }
              void drawLHand(float x,float y, float scale)
              {
              drawTriangle(x,y,scale);
              }
               void drawRHand(float x,float y, float scale)  
              {
              drawTriangle(x,y,scale);
              }
                        
                        void drawTriangle(float x,float y,float scale)    // Triangle code for multiple use in both hands + hat
                        {
                        line(x+15*scale,y,x+35*scale,y);
                        line(x+15*scale,y,x+25*scale,y-10*scale);
                        line(x+35*scale,y,x+25*scale,y-10*scale);
                        }