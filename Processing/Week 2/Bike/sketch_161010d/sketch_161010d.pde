size(500,500);
float x=350;
float y=400;
float radius = 40;


for(int i=0;i<360;i=i+10)   //right wheel
    {
    stroke(random(255),random(255),random(255));
    line(x,y,x+radius*sin(radians(i)),y+radius*cos(radians(i)));
    noFill();
    ellipse(x,y,80,80);
    }
for(int i=0;i<360;i=i+10)   //left wheel
    {
    stroke(random(255),random(255),random(255));
    line(x-150,y,(x-150)+radius*sin(radians(i)),y+radius*cos(radians(i)));
    noFill();
    ellipse(x-150,y,80,80);
    }
    
stroke(0,0,0);
strokeWeight(2);
line(x-150,y,x-100,y);

line(x-150,y,x-100,y-60);
line(x-100,y-80,x-100,y);
fill(255,255,255);

arc(x-100, y-80, 30, 10, PI / 2, 3 * PI / 2);  //seat
arc(x-100, y-80, 30, 10, -PI / 2, 3 * PI / 2); 

line(x-100,y-60,x-10,y-60);
line(x-10,y-60,x-100,y);

line(x,y,x-12,y-80);
line(x-12,y-80,x-30,y-80);