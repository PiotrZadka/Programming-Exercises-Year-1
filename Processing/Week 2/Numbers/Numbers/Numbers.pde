size(500,500);


int number=1;
int x=10;
int y=20;


for(int i=0;i<10;i++)
{
    for(int j=0;j<=9;j++)
    {
    fill(0,0,0);
    text(""+number,x,y);
    number=number+1;
    x=x+20;
    }
x=10;
y=y+20;
}