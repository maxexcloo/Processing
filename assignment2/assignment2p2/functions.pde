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

// Function To Draw Path Between Cells
void drawPath(int x1, int y1, int x2, int y2) {
	// Draw Horizontal
	for (int i = 0; i <= returnDistance(x1, x2); i++) {
		// Change Colour
		color pathColour = color(random(255), random(255), random(255));

		// Draw Cell
		drawSelected(returnLowest(x1, x2) + i, y1, pathColour);
	}

	// Draw Vertical
	for (int i = 0; i <= returnDistance(y1, y2); i++) {
		// Change Colour
		color pathColour = color(random(255), random(255), random(255));

		// Draw Cell
		drawSelected(x2, returnLowest(y1, y2) + i, pathColour);
	}
}

// Function To Draw A Square In The Specified Column & Row
void drawSelected(int column, int row, color c) {
	// Set Fill Colour
	fill(c);

	// Set Stroke Colour
	stroke(0);

	// Draw Rectangle In Specified Square
	rect(cellWidth*column, cellHeight*row, cellWidth, cellHeight);
}

// Function To Return Distance
int returnDistance(int x1, int x2) {
	// Check If Start Is More Than End
	if (x1 < x2)
		// Return Distance
		return x2 - x1;
	else
		// Return Distance
		return x1 - x2;
}

// Function To Return Distance
int returnLowest(int x1, int x2) {
	// Check If x1 Is Lower Than x2
	if (x1 < x2)
		// Return x1
		return x1;
	else
		// Return x2
		return x2;
}

