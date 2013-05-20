// Moving Human (Week 9, Question 6) - 10-05-2013
// Max Schaefer (43263798)

// Declare Global Object For Human Class
Human human;

// Setup Function
void setup() {
	// Set Window Size
	size(300, 300);

	// Set Background Colour
	background(255);

	// Create New Instance Of Human Class
	human = new Human();
}

// Draw Function
void draw() {
	// Set Background Colour
	background(255);

	// Display Human
	human.display();
}

void keyPressed() {
	// Move Human
	human.move();
}
