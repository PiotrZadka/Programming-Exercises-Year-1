
class Room {
	int area;
	float unitPrice;
	int time;
	
	public Room(int A, float U, int T)
	{
	this.area = A;
	this.unitPrice = U;
	this.time = T;
	}
	
	public float calculateCost(float hourlyRate)
	{
		return ( (unitPrice * area) + (float) (hourlyRate * time) );  
	}
	

}
