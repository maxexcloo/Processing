// Optional Loader
void optionalLoad() {
	// Check If Optional Enabled
	if (optionalEnable) {
		// Resizable Window Feature
		frame.setResizable(true);

		// Resize Feature
		optionalResize();
	}
}

// Optional Variables
boolean optionalEnable = false;

// Optional Keyboard Handler
void optionalKeyPressed(int keyCode) {
	// Check If Optional Enabled
	if (optionalEnable) {
		// Switch Statement To Handle Keys
		switch(keyCode) {
		case 32: // Space Bar
			// Reset Window
			optionalReset();
			break;
		case 33: // Page Up
			// Row Check
			if (gridRows != 1)
				// Remove One Row
				gridRows--;

			// Check Selected
			if (gridRows <= max(keyboardRow, mouseRow))
				// Reset Window
				optionalReset();
			break;
		case 34: // Page Down
			// Add One Row
			gridRows++;
			break;
		case 36: // Home
			// Column Check
			if (gridColumns != 1)
				// Remove One Column
				gridColumns--;

			// Check Selected
			if (gridColumns <= max(keyboardColumn, mouseColumn))
				// Reset Window
				optionalReset();
			break;
		case 35: // End
			// Add One Column
			gridColumns++;
			break;
		}
	}
}

// Optional Mouse Drag Handler
void mouseDragged() {
	// Check If Optional Enabled
	if (optionalEnable) {
		// Check Mouse Selected Column
		if ((int)(mouseX/cellWidth) != mouseColumn)
			// Set Mouse Selected Column
			keyboardColumn = (int)(mouseX/cellWidth);

		// Check Mouse Selected Row
		if ((int)(mouseY/cellHeight) != mouseRow)
			// Set Mouse Selected Row
			keyboardRow = (int)(mouseY/cellHeight);
	}
}

// Reset Window
void optionalReset() {
	// Reset Variables For Keyboard Position (Column/Row)
	keyboardColumn = 0;
	keyboardRow = 0;

	// Reset Variables For Mouse Position (Column/Row)
	mouseColumn = 0;
	mouseRow = 0;
}

// Resize Window
void optionalResize() {
	// Set Variables For Window Size (Width/Height)
	WIDTH = width;
	HEIGHT = height;

	// Set Variables For Cell Dimensions (Widths/Heights)
	cellWidth = WIDTH/gridColumns;
	cellHeight = HEIGHT/gridRows;
}

