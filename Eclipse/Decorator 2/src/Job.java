import java.util.ArrayList;

class Job 
{

	float hourlyRate;
	ArrayList<Room> roomList;
	
	Job( float H)
	{
		this.hourlyRate = H;
		roomList = new ArrayList<Room>();	
	}
	public void AddRoom (Room r)
	{
		roomList.add(r);
	}
	
	public float calculateCost()
	{
		float totalCost = 0.0f;
		for (Room r: roomList)
		{
			totalCost = totalCost + r.calculateCost(hourlyRate);
		}
		return totalCost;
	}
	
}
