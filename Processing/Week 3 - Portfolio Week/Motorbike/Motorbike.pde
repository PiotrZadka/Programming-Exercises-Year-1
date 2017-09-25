
void setup()
{
size(500,500);
motorbike(150,50,100);
}


void motorbike(float x, float y, float size)  //pass variables to wheels/frame
{
wheel(x,y,size/3);
wheel(x+size,y,size/3);
frame(x,y,size);
}

void frame(float x, float y, float size)  //draw frame
{
float h = size*0.5;
line(x,y,x+size,y);
line(x,y,x+h,y-h);
line(x+size,y,x+h,y-h);
}

void wheel (float x, float y, float wsize)  //draw wheels
{
ellipse(x,y,wsize,wsize);
}