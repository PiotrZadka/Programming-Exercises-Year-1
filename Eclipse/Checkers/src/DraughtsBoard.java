// Draughts game

public class DraughtsBoard { 

	final int BLANK = 0;
    final int BLACK = 1;
    final int WHITE = 2;
    	
	int Xsize   = 8;
	int Ysize   = 8;
	int [][] Board = new int[Xsize][Ysize];
	
	public DraughtsBoard()
	{
		int Place = BLANK;
		int Row, Column;
		
		for (Row = 0; Row < Ysize; Row++) 
		{
	    	for (Column = 0; Column < Xsize; Column++) 
			{
				if (Row <= 2) // White
				{
					if (Row == 0 || Row == 2)
					{	
						if (Column % 2 == 1) // Odd columns
							Place = WHITE;
						else
							Place = BLANK;	
					}
					else if (Row == 1) // Row 1
					{
						if (Column % 2 == 0) // Even columns
							Place = WHITE;
						else
							Place = BLANK;
					}
				}
				else
				if (Row >= 5) // Black
				{
					if (Row == 5 || Row == 7)
					{
						if (Column % 2 == 0) // Even columns
							Place = BLACK;
						else
							Place = BLANK;
					}
					else if (Row == 6) // Row 6
					{
						if (Column % 2 == 1) // Even columns
							Place = BLACK;
						else
							Place = BLANK;
					}
				}
				else
					Place = BLANK;
				
				Board[Column][Row] = Place;
			}
			
		}
	}
	
	public int get_square (int X, int Y)
	{
		return Board[X][Y];
	}
	
	public void set_square (int X, int Y, int V)
	{
		Board[X][Y] = V;
	}
	
	
	
	public void draw()
	{
		// Print the board
		for (int Row = -1; Row < Ysize; Row++) 
		{
	    	for (int Column = -1; Column < Xsize; Column++) 
			{
					if (Row == -1 && Column > -1)
						System.out.print(Column+1);
					else
					if (Column == -1 && Row >= -1)
						System.out.print(Row+1);
					else
					{
						switch (Board[Column][Row])
						{
							case BLANK:
							System.out.print(".");
							break;
						
							case BLACK:
							System.out.print("@");
							break;
						
							case WHITE:
							System.out.print("O");
							break;
						}
					}
			}

	    // New line at end of every row
	    System.out.print("\n");	
	
		}
	}
	int CheckMove(int oldX, int oldY, int newX, int newY)  // I can put any name of local variable
	{
		int diffX = newX - oldX;
		int diffY = newY - oldY;
		
		if(newX < 0 || newX > 7 || newY <0 || newY > 7){  //check if its not outside the board
		return -1;
		}
		if(get_square(newX,newY) != BLANK){  					//  return invalid if new location is occupied
		return -1;
		}
		
		if(get_square(oldX,oldY) == BLACK){  					//BLACKS
			if(diffX == 1 && diffY == -1 || diffX == -1 && diffY == -1){ // simple move forward
				set_square(newX,newY, BLACK);
				set_square(oldX,oldY, BLANK);
			}
			else if(diffX == -1 && diffY == 1 || diffX == 1 && diffY == 1){  // invalid move if tried to move backwards
				return -1;
			}
			if(get_square((oldX + newX)/2,(oldY + newY)/2) == WHITE){
				if(diffX == 2 && diffY == -2 || diffX == -2 && diffY == -2){  // jump forward
					set_square(newX,newY, BLACK);
					set_square(oldX,oldY, BLANK);
					set_square((oldX + newX)/2,(oldY + newY)/2,BLANK);
				}
			}
			else if(diffX == -2 && diffY == 2 || diffX == 2 && diffY == 2){  // invalid move if jump backwards
				return -1;
			}
		}
		if(get_square(oldX,oldY) == WHITE){			// WHITES
			if(diffX == -1 && diffY == 1 || diffX == 1 && diffY == 1){ // simple move forward
				set_square(newX,newY, WHITE);
				set_square(oldX,oldY, BLANK);
			}
			else if(diffX == 1 && diffY == -1 || diffX == -1 && diffY == -1){  // invalid move if tried to move backwards
				return -1;
			}
			if(get_square((oldX + newX)/2,(oldY + newY)/2) == BLACK){
				if(diffX == 2 && diffY == 2 || diffX == -2 && diffY == 2){  // jump forward
					set_square(newX,newY, WHITE);
					set_square(oldX,oldY, BLANK);
					set_square((oldX + newX)/2,(oldY + newY)/2, BLANK);
				}
			}
			else if(diffX == 2 && diffY == -2 || diffX == -2 && diffY == -2){  // invalid move if jump backwards
				return -1;
			}
			else{
				return -1;
			}
		}

	return 0;
	}
}


