// Check Inside Drag Threshold
boolean checkInsideDragThreshold(int x, int y) {
	// Check Inputs
	if (x < 0 || x > width || y < 0 || y > height)
		// Return True
		return false;
	else
		// Return False
		return true;
}

// Function To Draw Grid
void drawGrid() {
	// Draw Column
	line(width/2, 0, width/2, height);

	// Draw Row
	line(0, height/2, width, height/2);
}

// Function To Return Position
float returnPosition(float special, float global) {
	// Return Value
	return (special-1)*global/2+global/4;
}

// Function To Return Position (Grid)
int returnPositionGrid(float special, float global) {
	// Return Value
	if (special < global/2)
		return 1;
	// Return Value
	else
		return 2;
}
