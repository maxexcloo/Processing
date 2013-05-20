// Assignment 2 (Part 2) - 05-04-2013
// Max Schaefer (43263798)

// Set Variables For Window Size (Width/Height)
final int WIDTH = 300;
final int HEIGHT = 300;

// Set Variables For Grid Size (Columns/Rows)
float gridColumns = 10;
float gridRows = 10;

// Set Variables For Cell Dimensions (Widths/Heights)
float cellWidth = WIDTH/gridColumns;
float cellHeight = HEIGHT/gridRows;

// Set Variables For Cell Colours (RGB)
color sourceColour = color(0, 0, 255);
color destinationColour = color(0, 255, 0);

// Set Variables For Keyboard (Column/Row)
int keyboardColumn = 0;
int keyboardRow = 0;

// Initialise Variables For Mouse (Column/Row)
int mouseColumn = 0;
int mouseRow = 0;

// Setup Function - Run Once At Program Start
void setup() {
	// Set Window Size
	size(WIDTH, HEIGHT);

	// Set Background Colour
	background(255);

	// Framerate is a dirty hack!
	// Need a better method ;)

	// Set Framerate
	frameRate(20);
}

// Draw Function - Run Every Frame
void draw() {
	// Clear Canvas
	background(255);

	// Draw Grid
	drawGrid();

	// Draw Path
	drawPath(keyboardColumn, keyboardRow, mouseColumn, mouseRow);

	// Optional Extras (Comment To Disable)
	optionalExtras();

	// Draw Current Selected Square (Mouse)
	drawSelected(mouseColumn, mouseRow, destinationColour);

	// Draw Current Selected Square (Keyboard)
	drawSelected(keyboardColumn, keyboardRow, sourceColour);
}

