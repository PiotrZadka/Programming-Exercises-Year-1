import java.util.Scanner;

public class DraughtsApp
{
	public static void main (String [] args)
	{
		DraughtsBoard GameBoard = new DraughtsBoard();
		Scanner in = new Scanner(System.in);
		
		final int BLANK = 0;
    	final int BLACK = 1;
    	final int WHITE = 2; 
		int X, Y, newX, newY;
		int Piece = 0;
		X=0;
		Y=0;
		newX = 0;
		newY = 0;
		
		while (X != -1)
		{		
			System.out.println();
			GameBoard.draw();
			System.out.println("Where would you like to start?");
			System.out.println("Enter -1 to quit");
			System.out.print("\nEnter X coordinate: ");
			X = in.nextInt();
			if (X != -1)
			{
				System.out.print("Enter Y coordinate: ");
				Y = in.nextInt();
				
				Piece = GameBoard.get_square(X-1, Y-1);
				System.out.print("\nSquare at "+X+","+Y+" is ");
				switch (Piece)
				{
					case BLANK:
						System.out.println("blank");
						break;
					
					case BLACK:
						System.out.println("a black piece");
						break;
					
					case WHITE:
						System.out.println("a white piece");
						break;
				}
				if(Piece != BLANK)
				{
					System.out.println("Where do you want to move it?");
					System.out.println("X: ");
					newX = in.nextInt();
					System.out.println("Y: ");
					newY = in.nextInt();
					
					int result = GameBoard.CheckMove(X-1,Y-1, newX-1, newY-1);
					
					if(result == -1){
						System.out.println("Invalid move");
					}
					else if(result == 1){
						System.out.println("You took a piece");
					}
				}
			}
		}
	}
	
}
