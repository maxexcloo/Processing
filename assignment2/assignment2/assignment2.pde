// Assignment 2 (Part 4) - 05-05-2013
// Max Schaefer (43263798)

// Set Variables For Window Size (Width/Height)
int WIDTH = 300;
int HEIGHT = 300;

// Set Variables For Grid Size (Columns/Rows)
float gridColumns = 10;
float gridRows = 10;

// Set Variables For Cell Dimensions (Widths/Heights)
float cellWidth = WIDTH/gridColumns;
float cellHeight = HEIGHT/gridRows;

// Initialise Variables For Cell Colours
color sourceColour = color(0, 0, 255);
color destinationColour = color(0, 255, 0);
color pathColour;

// Initialise Variables For Path
int pathCount;
int pathPosition = 1;
int pathTime = 0;
int pathTotal;

// Initialise Variables For Keyboard Position (Column/Row)
int keyboardColumn = 0;
int keyboardRow = 0;

// Initialise Variables For Mouse Position (Column/Row)
int mouseColumn = 0;
int mouseRow = 0;

// Setup Function - Run Once At Program Start
void setup() {
	// Set Window Size
	size(WIDTH, HEIGHT);

	// Set Background Colour
	background(255);
}

// Draw Function - Run Every Frame
void draw() {
	// Clear Canvas
	background(255);

	// Draw Grid
	drawGrid();

	// Draw Path
	drawPath(keyboardColumn, keyboardRow, mouseColumn, mouseRow);

	// Set Moving Cell Position
	if (millis() - pathTime >= 500) {
		// Check Path Position
		if (pathPosition < pathTotal)
			// Increment Path Position
			pathPosition++;
		// Check Path Position
		else
			// Reset Path Position
			pathPosition = 1;

		// Reset Time
		pathTime = millis();
	}

	// Draw Current Selected Square (Mouse)
	drawSelected(mouseColumn, mouseRow, destinationColour);

	// Draw Current Selected Square (Keyboard)
	drawSelected(keyboardColumn, keyboardRow, sourceColour);

	// Enable Optional
	optionalEnable = true;

	// Load Optional
	optionalLoad();
}

