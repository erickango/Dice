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
	Die(int x, int y)
	{
		myX = x;
		myY = y;
		number = roll();

	}
	int roll()
	{
		return (int)(Math.random() * 6) + 1;
		//your code here
	}
	void show()
	{
		stroke(3);
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		rect(myX, myY, 50,50);
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		if(number == 1) ellipse(myX + 25, myY + 25, 10,10);
		else if(number == 2){
			ellipse(myX+15, myY+15, 10,10);
			ellipse(myX+35, myY+35, 10,10);
		} else if(number == 3){
			ellipse(myX+15, myY+15, 10,10);
			ellipse(myX+35, myY+35, 10,10);
			ellipse(myX+25, myY+25, 10, 10);
		} else if(number == 4){
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+35, myY+15, 10, 10);
			ellipse(myX+15, myY+35, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
		} else if(number == 5){
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+40, myY+10, 10, 10);
			ellipse(myX+10, myY+40, 10, 10);
			ellipse(myX+40, myY+40, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
		} else if(number == 6){
			int i, s;
			for(s = 10; s<50; s+=15){
				for(i = 15; i<50; i+=20){
					ellipse(myX+i, myY+s, 10,10);
				}
			}
		}
		//your code here
	}
}
