float x= 30;
float y=70;
float radius = 20;
float end = 10;
size(500,500);


for(int j=0;j<end;j++)
{
    for(int k=0;k<end;k++)
    {
        x=x+40;

        for(int i=0;i<360;i=i+10)
        {
             stroke(random(255),random(255),random(255));
             line(x,y,x+radius*sin(radians(i)),y+radius*cos(radians(i)));
             noFill();
             ellipse(x,y,40,40);
             
         }
     } 
x=30;
y=y+40;
}