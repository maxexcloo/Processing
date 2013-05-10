// Code Cleanup (Week 4, Question 2) - 22-03-2013
// Max Schaefer (43263798)

// Set Ellipse Size (Both Horizontal & Vertical)
int ellipseSize = 50;

// Set Ellipse Postition (Both X & Y Coordinates)
int ellipsePosition = 100;

// Set Background Shade (0 - 255)
int backgroundShade = 255;

// Setup Function
void setup() {
	// Set Window Size
	size(200, 200);

	// Set Background Shade
	background(backgroundShade);
}

// Draw Function
void draw () {
	// Set Fill Colour
	fill(255, 175, 87);

	// Draw Ellipse Parameters From Variables
	ellipse(ellipsePosition, ellipsePosition, ellipseSize*2, ellipseSize*2);
}

