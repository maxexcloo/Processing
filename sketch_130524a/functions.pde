// Function To Draw Grid
void drawGrid() {
	// Loop Through Columns
	for(int x = 0; x < gridColumns; x++) {
		// Loop Through Rows
		for(int y = 0; y < gridRows; y++) {
			// Set Fill
			fill(cellColour[x][y]);

			// Draw Rectangle
			rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
		}
	}
}

// Function To Set Colours
void setColours() {
	// Loop Through Columns
	for(int x = 0; x < gridColumns; x++)
		// Loop Through Rows
		for(int y = 0; y < gridRows; y++)
			// Set Colour
			cellColour[x][y] = color(random(255), random(255), random(255));
}
