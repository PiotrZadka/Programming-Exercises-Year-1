size(500,500);

int x = 250;      // initial place if head
int y = 150;      // initial place of head
int size = 60;    // size of head
float scale = 1;  // resize stickman


fill(0,0,255);    //color
ellipse(x,y,size*scale,size*scale); //head
line(x,y+30*scale,x,y+90*scale); //torso
line(x-40*scale,y+40*scale,x+40*scale,y+40*scale); //hands
line(x,y+90*scale,x-40*scale,y+130*scale); //left leg
line(x,y+90*scale,x+40*scale,y+130*scale); //right leg