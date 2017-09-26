
public class TiledRoom extends Room
{
	
	public TiledRoom(int A, float U, int T)
	{
		super( A, U, T);   
	}

	public float calculateCost(float hourlyRate )
	{
		
		return super.calculateCost(hourlyRate * 1.5f) + area;  // explaining this.
	}

}

