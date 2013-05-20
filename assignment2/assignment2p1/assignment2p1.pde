// Assignment 2 (Part 1) - 05-04-2013
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

// Initialise Keyboard Selected Variables (Column/Row)
int keyboardSelectedColumn = 0;
int keyboardSelectedRow = 0;

// Setup Function - Run Once At Program Start
void setup() {
	// Set Window Size
	size(WIDTH, HEIGHT);

	// Set Background
	background(255);
}

// Draw Function - Run Every Frame
void draw() {
	// Clear Canvas
	background(255);

	// Draw Grid
	drawGrid();

	// Draw Current Selected Square
	drawSelected(keyboardSelectedColumn, keyboardSelectedRow);
}

// Function To Handle Keyboard Input
void keyPressed(){
	// SwitchStatement To Handle Keys
	switch(keyCode) {
		// Left Arrow
		case 37:
			// Check To Ensure Limit Not Reached
			if(keyboardSelectedColumn != 0)
				// Move One Column To The Left
				keyboardSelectedColumn--;
			break;
		// Right Arrow
		case 39:
			// Check To Ensure Limit Not Reached
			if(keyboardSelectedColumn != gridColumns-1)
				// Move One Row To The Right
				keyboardSelectedColumn++;
			break;
		// Up Arrow
		case 38:
			// Check To Ensure Limit Not Reached
			if(keyboardSelectedRow != 0)
				// Move One Row Upwards
				keyboardSelectedRow--;
			break;
		// Down Arrow
		case 40:
			// Check To Ensure Limit Not Reached
			if(keyboardSelectedRow != gridRows-1)
				// Move One Row Downwards
				keyboardSelectedRow++;
			break;
	}
}

// Function To Draw Grid
void drawGrid() {
	// Clear Fill Colour
	noFill();

	// Set Stroke Colour
	stroke(0);

	// Draw Columns Through Loop
	for (int column = 1; column < gridColumns; column++)
		// Draw Column
		line(cellWidth*column, 0, cellWidth*column, HEIGHT);

	// Draw Rows Through Loop
	for (int row = 1; row < gridRows; row++)
		// Draw Row
		line(0, cellHeight*row, WIDTH, cellHeight*row);
}

// Function To Draw A Square In The Specified Column & Row
void drawSelected(int column, int row) {
	// Set Fill Colour
	fill(0, 0, 255);

	// Set Stroke Colour
	stroke(0);

	// Draw Rectangle In Specified Square
	rect(cellWidth*column, cellHeight*row, cellWidth, cellHeight);
}

