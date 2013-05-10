// Variables & Conditionals (Week 4, Question 3) - 22-03-2013
// Max Schaefer (43263798)

// Click Count Variable
int clickCount = 1;

// Setup Function
void setup() {
	// Set Size
	size(400, 400);

	// Set Background
	background(255);
}

// Draw Function
void draw() {}

// Mouse Click Function
void mouseClicked() {
	// Either of the methods work, just demonstrating/testing ;)
	// Uncomment one of the two to test!
	// Used if method as it was shorter.

	/*
	// Check Click Counter (Switch Method)
	switch(clickCount) {
		case 1:
			// Set Fill Options (Red)
			fill(255, 0, 0);

			// Exit Case
			break;
		case 2:
			// Set Fill Options (Green)
			fill(0, 255, 0);

			// Exit Case
			break;
		default:
			// Set Fill Options (Blue)
			fill(0, 0, 255);

			// Reset Click Count
			clickCount = 0;

			// Exit Case
			break;
	}
	*/

	// Check Click Counter (1st Click) (If Method)
	if(clickCount == 1) {
		// Set Fill Options (Red)
		fill(255, 0, 0);
	// Check Click Counter (2nd Click)
	} else if(clickCount == 2) {
		// Set Fill Options (Green)
		fill(0, 255, 0);
	// Check Click Counter (Catch All Other Clicks)
	} else {
		// Set Fill Options (Blue)
		fill(0, 0, 255);

		// Reset Click Count
		clickCount = 0;
	}

	// Draw Circle
	ellipse(mouseX, mouseY, 50, 50);

	// Increment Click Count
	clickCount++;
}
