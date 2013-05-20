// Declare Human Class
class Human {
	// Data Members
	float x;
	float y;
	float size;

	// Default Constructor
	Human() {
		// Set Default Variable Values
		x = width/2;
		y = height/2;
		size = 41.2;
	}

	// Parameterized Constructor
	Human(float _x, float _y, float _size) {
		// Set Parameterized Variable Values
		x = _x;
		y = _y;
		size = _size;
	}

	// Display Function
	void display() {
		// Set Display Options
		stroke(0);
		strokeWeight(2);

		// Draw Figure
		line(x, y-size/2, x, y+size/2);
		line(x-size/2, y, x+size/2, y);
		line(x, y+size/2, x-size/3, y+size);
		line(x, y+size/2, x+size/3, y+size);
		ellipse(x, y-size, size, size);
	}

	// Move Function
	void move() {
		if (keyCode == UP)
			y-=size/4;
		if (keyCode == DOWN)
			y+=size/4;
		if (keyCode == LEFT)
			x-=size/4;
		if (keyCode == RIGHT)
			x+=size/4;
	}
}
