import java.util.ArrayList;
import processing.core.PApplet;

class Circle extends Shapes
{
	
	Circle(float x, float y, float size, int colour, PApplet parent)
	{
		super( x,y,size,colour,parent);
	}
	
	@Override
	void draw()
	{
		parent.fill( colour );
		parent.ellipse( x, y, size*2.0f, size*2.0f );
	}
	
}

class Star extends Shapes
{
	int numPoints;
	
	Star(float x, float y, float size, int colour, int numPoints, PApplet parent)
	{
		super( x,y,size,colour,parent );
		this.numPoints = numPoints;
		
	}
	@Override
	void draw()
	{
		parent.fill( colour );
		float dTheta = (float)Math.PI / (float)numPoints;
		
		parent.beginShape(); // start a filled polygon
		float theta = 0.0f;
		for ( int i = 0; i < numPoints; i++ )
		{
			// add outer vertex 
			parent.vertex( (float)(x + size * Math.cos( theta )), (float)(y + size * Math.sin(theta)) );
			theta += dTheta;
			// add inner vertex
			parent.vertex( (float)(x + 0.5f*size * Math.cos( theta )), (float)(y + 0.5f*size * Math.sin(theta)) );
			theta += dTheta;
		}
		parent.endShape(parent.CLOSE); // end filled polygon
	}
}

public class RandomShapes extends PApplet
{
	ArrayList<Star> starList;
	ArrayList<Circle> circleList;
	ArrayList<Shapes> shapesList;
	final int numShapes = 100;
	
	int randomColour()
	{
		return color( (int)random(255), (int)random(255), (int)random(255) );
	}
 	public void setup()
	{
		size( 500, 500 );
		shapesList = new ArrayList<Shapes>();
	
		// create some random circles and stars
		int i;

		for(i = 0; i < numShapes; i++){
			float x = random(width);
			float y = random(height);
			float size = random(height * 0.1f);
			int colour = randomColour();
			int numPoints = (int)random( 4, 10 );
			
			if(i < numShapes/2){
				shapesList.add( new Circle(x, y, size, colour, this ));
			}
			else{
				shapesList.add( new Star(x, y, size, colour, numPoints, this ));
			}
		}
	}
	
 	public void draw()
	{
 		background(255);
		for ( Shapes shape: shapesList )
		{
			shape.update();
			shape.draw();
		}
	}
}

