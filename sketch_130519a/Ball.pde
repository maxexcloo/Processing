// Declare Ball Class
class Ball {
	// Initialise Properties
	color colour;
	boolean dragged;
	float radius;

	// Initialise Positional Variables
	int column;
	int row;
	float x;
	float y;

	// Default Constructor
	Ball() {
		// Set Properties
		colour = color(random(255), random(255), random(255));
		dragged = false;
		radius = 50;

		// Set Positional Variables
		column = 1;
		row = 1;
		x = returnPosition(column, width);
		y = returnPosition(row, height);
	}

	// Display Function
	void display() {
		// Set Ellipse Mode
		ellipseMode(CENTER);

		// Set Fill Colour
		fill(colour);

		// Check Drag State
		if (dragged)
			// Draw Ellipse (X/Y)
			ellipse(x, y, radius, radius);
		else
			// Draw Ellipse (Grid)
			ellipse(returnPosition(column, width), returnPosition(row, height), radius, radius);
	}

	// Mouse Drag Function
	void drag() {
		// Check Mouse Position Against Ball Position
		if (dist(mouseX, mouseY, x, y) <= radius) {
			// Set Ball Dragged
			dragged = true;

			// Set Ball Position (X/Y)
			x = mouseX;
			y = mouseY;
		}
	}

	// Mouse Release Function
	void release() {
		// Check Grid Position Change
		if (checkInsideDragThreshold(mouseX, mouseY) && ((returnPositionGrid(x, width) != column || returnPositionGrid(y, height) != row))) {
			// Set Properties
			colour = color(random(255), random(255), random(255));

			// Set Ball Positon (Grid)
			column = returnPositionGrid(x, width);
			row = returnPositionGrid(y, height);
		}

		// Reset Ball Position (X/Y)
		x = returnPosition(column, width);
		y = returnPosition(row, height);

		// Unset Ball Dragged
		dragged = false;
	}
}
