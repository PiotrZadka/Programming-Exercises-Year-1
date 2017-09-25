import java.util.Scanner;
public class Ext3 {

	public static void main(String[] args) {
	int a;
	int b;
	
	Scanner in = new Scanner(System.in);
	System.out.println("Add/Substract/Product");
	System.out.print("Please enter 1st number ");
	a = in.nextInt();
	System.out.print("Please enter 2nd number ");
	b = in.nextInt();
	
	
	System.out.println("Sum = " + (a+b));
	System.out.println("Product = " +(a*b));
	System.out.println("Substraction = " +(a-b));
	
}
}