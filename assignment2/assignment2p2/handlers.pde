// Function To Handle Keyboard Input
void keyPressed() {
	// Switch Statement To Handle Keys
	switch(keyCode) {
	case 37: // Left Arrow
		// Check To Ensure Limit Not Reached
		if (keyboardColumn != 0)
			// Move One Column To The Left
			keyboardColumn--;
		break;
	case 39: // Right Arrow
		// Check To Ensure Limit Not Reached
		if (keyboardColumn != gridColumns-1)
			// Move One Row To The Right
			keyboardColumn++;
		break;
	case 38: // Up Arrow
		// Check To Ensure Limit Not Reached
		if (keyboardRow != 0)
			// Move One Row Upwards
			keyboardRow--;
		break;
	case 40: // Down Arrow
		// Check To Ensure Limit Not Reached
		if (keyboardRow != gridRows-1)
			// Move One Row Downwards
			keyboardRow++;
		break;
	}
}

// Function To Handle Mouse Input
void mousePressed() {
	// Set Mouse Selected (Column/Row)
	mouseColumn = (int)(mouseX/cellWidth);
	mouseRow = (int)(mouseY/cellHeight);
}

