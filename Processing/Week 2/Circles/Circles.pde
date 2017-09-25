
size (1000,1000);
int x = 5;
int y = 2;
int end = 10;
int size = 30;

for(int i=0;i<=10;i++)
{
  for(int j=10;j<end;j++)
{
  ellipse(x,y,size,size);
  line(x-(size/2),y,x+(size/2),y);
  line(x,y-(size/2),x,y+(size/2));
  x=x+35;
}
  y=y+35;  //draw circles vertical
  x=20;    //new line
  end=end+1;
}

for(int i=0;i<=10;i++)
{
  for(int j=0;j<end-10;j++)
{
  ellipse(x,y,size,size);
  line(x-(size/2),y,x+(size/2),y);
  line(x,y-(size/2),x,y+(size/2));
  x=x+35;
}
  y=y+35;  //draw circles vertical
  x=20;    //new line
  end=end-1;
}