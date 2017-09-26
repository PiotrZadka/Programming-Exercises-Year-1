import processing.core.PApplet;

public class Shapes {

	float x, y; // position
	float size; // radius
	int colour; // Processing colour representation
	PApplet parent; // parent Processing Applet
	float xt, yt; // target point - used by update 
	
	Shapes ( float x, float y, float size, int colour, PApplet parent){
	this.parent = parent;
	this.x = x;
	this.y = y;
	this.size = size;
	this.colour = colour;
	
	// set a target to move towards
	xt = x;
	yt = y;
	}
	
	void update()
	{
		// is the centre close to the target?
		if ( (x-xt)*(x-xt) + (y-yt)*(y-yt) < 1.0f )
		{
			// choose a new target
			xt = x + parent.random( -50.0f, 50.0f );
			yt = y + parent.random( -50.0f, 50.0f );
		}
		// move towards target
		x = xt * 0.05f + x * 0.95f;
		y = yt * 0.05f + y * 0.95f;
	}
	
	void draw(){
	
	}
	
}
