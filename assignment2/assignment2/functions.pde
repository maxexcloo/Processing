// Change Colour
void changeColour() {
	// Check Current Path Count Below Total
	if (pathCount < pathTotal) {
		// Set Start Cell Colour
		if (pathCount == 1)
			// Change Colour To White
			pathColour = color(255);
		// Set End Cell Colour
		else if (pathCount == pathTotal - 1)
			// Change Colour To Black
			pathColour = color(0);
		// Set Middle Cell Colours
		else if (pathTotal > 0)
			// Change Colour To Grey
			pathColour = color(255/pathTotal*(pathTotal-pathCount));

		// Increment Count
		pathCount++;
	}

	// Check Position
	if (pathCount == pathPosition)
		// Change Colour To Black
		pathColour = color(0);
}

// Reset Colour
void resetColour(int total) {
	// Reset Colours
	pathColour = color(0);

	// Reset Integers
	pathCount = 0;
	pathTotal = total;
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

// Function To Draw Path Between Cells
void drawPath(int x1, int y1, int x2, int y2) {
	// Reset Colour
	resetColour(returnDistance(x1, x2) + returnDistance(y1, y2));

	// Path Loop
	for (int i = 0; i <= pathTotal; i++) {
		// Change Colour
		changeColour();

		// Check Horizontal
		if (i <= returnDistance(x1, x2)) {
			// Source Lower Than Destination
			if (x1 < x2)
				// Draw Cell
				drawSelected(min(x1, x2) + i, y1, pathColour);
			// Source Higher Than Destination
			if (x1 > x2)
				// Draw Cell
				drawSelected(max(x1, x2) - i, y1, pathColour);
		}
		// Check Vertical
		else {
			// Source Lower Than Destination
			if (y1 < y2)
				// Draw Cell
				drawSelected(x2, min(y1, y2) + i - returnDistance(x1, x2), pathColour);
			// Source Higher Than Destination
			if (y1 > y2)
				// Draw Cell
				drawSelected(x2, max(y1, y2) - i + returnDistance(x1, x2), pathColour);
		}
	}
}

// Function To Draw A Square In The Specified Column & Row
void drawSelected(int column, int row, color c) {
	// Set Fill Colour
	fill(c);

	// Set Stroke Colour
	stroke(0);

	// Set Offset Variables
	int xOffset = 0;
	int yOffset = 0;

	// Check Column
	if (column == 0)
		xOffset = 1;

	// Check Row
	if (row == 0)
		yOffset = 1;

	// Draw Rectangle In Specified Square
	rect(cellWidth*column-xOffset, cellHeight*row-yOffset, cellWidth+xOffset, cellHeight+yOffset);
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

