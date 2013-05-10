// Grid With Bouncing Balls (Week 8, Question 6) - 03-05-2013
// Max Schaefer (43263798)

// Set Variables For Window Size (Width/Height)
final int WIDTH = 300;
final int HEIGHT = 300;

// Set Variables For Grid Size (Columns/Rows)
float gridColumns = 4;
float gridRows = 4;

// Set Variables For Cell Dimensions (Widths/Heights)
float cellWidth = WIDTH/gridColumns;
float cellHeight = HEIGHT/gridRows;

// Set Variables For Balls (Global)
int ballSize = 50;

// Set Variables For Balls (Specific)
color[] ballColour = {
	color(255, 0, 0), color(0, 255, 0), color(0, 0, 255), color(0)
};
int[] ballDirection = {
	1, 1, 1, 1
};
float[] ballPositionX = {
	cellWidth*0, cellWidth*1, cellWidth*2, cellWidth*3
};
float[] ballPositionY = {
	cellHeight*0, cellHeight*1, cellHeight*2, cellHeight*3
};

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

	// Loop Through All Balls
	for (int i = 0; i < ballColour.length; i++) {
		// Draw Balls
		drawBall(ballPositionX[i]+(ballSize/2), ballPositionY[i]+(cellHeight/2), ballColour[i]);

		// Set Directions
		if (ballPositionX[i] == 0)
			ballDirection[i] = 1;
		else if (ballPositionX[i] == width-ballSize)
			ballDirection[i] = 0;

		// Set Positions
		if (ballDirection[i] == 1)
			ballPositionX[i]++;
		else
			ballPositionX[i]--;
	}
}

// Function To Draw Ball
void drawBall(float x, float y, color c) {
	// Set Fill Colour
	fill(c);

	// Clear Stroke
	noStroke();

	// Draw Ellipse
	ellipse(x, y, ballSize, ballSize);
}

// Function To Draw Grid
void drawGrid() {
	// Clear Fill Colour
	noFill();

	// Set Stroke Colour
	stroke(0);

	// Draw Columns Through Loop
	for (int column = 1; column < gridColumns; column++) {
		// Draw Column
		line(cellWidth*column, 0, cellWidth*column, HEIGHT);
	}

	// Draw Rows Through Loop
	for (int row = 1; row < gridRows; row++) {
		// Draw Row
		line(0, cellHeight*row, WIDTH, cellHeight*row);
	}
}

