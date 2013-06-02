// Random Colour Array Grid (Week 11, Question 3) - 24-05-2013
// Max Schaefer (43263798)

// Set Window Size Variables
final int WIDTH = 500;
final int HEIGHT = 500;

// Set Variables For Grid
float gridColumns = 30;
float gridRows = 30;

// Set Variables For Cells
color cellColour[][] = new color[(int)gridColumns][(int)gridRows];
float cellWidth = WIDTH/gridColumns;
float cellHeight = HEIGHT/gridRows;

// Setup Function - Run Once At Program Start
void setup() {
	// Set Window Size
	size(WIDTH, HEIGHT);

	// Call Colour Set Function
	setColours();
}

// Draw Function - Run Every Frame
void draw() {
	// Reset Canvas
	background(255);

	// Draw Grid
	drawGrid();
}
