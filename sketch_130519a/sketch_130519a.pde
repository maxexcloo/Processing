// Ball Quadrants (Week 10, Question 5) - 17-05-2013
// Max Schaefer (43263798)

// Declare Global Object For Human Class
Ball ball;

// Setup Function - Run Once At Program Start
void setup() {
	// Set Window Size
	size(400, 400);

	// Set Background Colour
	background(255);

	// Create New Instance Of Human Class
	ball = new Ball();
}

// Draw Function - Run Every Frame
void draw() {
	// Clear Canvas
	background(255);

	// Draw Grid
	drawGrid();

	// Display Ball
	ball.display();
}
