
import java.util.Scanner;
public class Decorating {

	public static void main( String args[]) 
	{

		Scanner scan = new Scanner(System.in);
		
		System.out.print("Please enter hourly rate: ");
		float hourlyRate = scan.nextFloat();
		

		Job myJob = new Job (hourlyRate);
		
		// loop begins...
		boolean keepAsking = true;
		
		while ( keepAsking )
		{
			
			System.out.print("Please enter room's area: ");
			int area = scan.nextInt();
			System.out.print("Please enter room's unit cost: ");
			float unitPrice = scan.nextFloat();
			System.out.print("Please enter room's decorating time: ");
			int time = scan.nextInt();
			System.out.print("Is there a tiled room? (y/n)");
			String input = scan.next();	

			Room MyRoom;
			
			if(input.equals("y"))
			{
				MyRoom = new TiledRoom(area, unitPrice, time);   // Why this is here?
				myJob.AddRoom(MyRoom);
			}
			if(input.equals("n"))
			{
				MyRoom = new Room (area,unitPrice, time);
				myJob.AddRoom(MyRoom);
			}
			
			System.out.print("Would you like to add another room? (y/n)");
			String input2 = scan.next();	
		
			
			if(input2.equals("y"))
			{
			keepAsking = true;
			}
			if(input2.equals("n"))
			{
			keepAsking = false;
			}
			
				
		} // ...loop ends
		
		System.out.println("Cost of job is "+myJob.calculateCost());
		scan.close();
		
	}

}
