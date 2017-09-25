int x=10;
int y=20;
int end = 10;

size(500,600);         //set size of canvas screen

for(int i=0;i<=end;i++)    
{
     for(int j=0;j<i;j++)       //drawing circles as long as "j" is less than "i" & "i" is <=end(10)
     {
     ellipse(x,y,20,20);  //draw ellipse
     line(x-10,y,x+10,y);
     line(x,y-10,x,y+10);
     x=x+25;           //move +25 horizontal
     }
     
x=10;                 //reset position to begining of line
y=y+25;               //move +25 vertical
}

for(int i=9;i<end;i--)      
{
     for(int j=0;j<i;j++)     //drawing circles as long as "j" is less than "i" & "i" is <end(10)
     {
     ellipse(x,y,20,20);  //draw ellipse
     line(x-10,y,x+10,y);
     line(x,y-10,x,y+10);
     x=x+25;           //move +25 horizontal
     }
     
x=10;                 //reset position to begining of line
y=y+25;               //move +25 vertical
}