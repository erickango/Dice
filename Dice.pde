void setup()
{
	size(400,400);
	background(255);
	noLoop();
}
void draw()
{
	background(0);
	int i, s;
	for(s = 12; s<400; s += 65){
		for(i = 12; i<400; i+=65){
			Die bob = new Die(i,s);
			bob.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, number;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		number = roll();
	}
	int roll()
	{
		(int) (Math.random() * 6) + 1;
		//your code here
	}
	void show()
	{
		stroke(3);
		fill(255);
		rect(myX, myY, 50,50);
		if(number = 1) ellipse(myX + 25, myY + 25, 10,10);
		else if(number = 2){
			ellipse(myX+15, myY+50, 10,10);
			ellispe(myX + 35, myY + 25, 10,10);
		}
		//your code here
	}
}
