// Animated Picture (Week 3, Question 3) - 15-03-2013
// Max Schaefer (43263798)

// Initialise Variables
boolean circleHidden = false;
int circleSizeWidth = 0;
int circleSizeHeight = 0;

// Setup Function
void setup() {
	// Set Size
	size(300, 300);

	// Set Background
	background(255);
}

// Draw Function
void draw() {
	// Set Options
	noFill();
	stroke(1);

	// Draw Background Vertical Ellipse
	ellipse(width/2, height/2, width/8*3, height-40);

	// Set Options
	fill(#D2D2D2);
	noStroke();

	// Draw Background Horizontal Ellipse (Left)
	ellipse(width/4, height/2, width/16*5, height/16*5);

	// Draw Background Horizontal Ellipse (Right)
	ellipse(width-width/4, height/2, width/16*5, height/16*5);

	// Set Options
	fill(#777777);
	stroke(1);

	// Draw Foreground Rectangle (Square)
	rect(width/4, height/4, width-width/2, height-height/2);

	// Set Options
	fill(#5D5D5D);
	stroke(1);

	// Check Circle Size Width
	if(circleSizeWidth <= width-width/2) {
		// Increment Circle Size Width Variable
		circleSizeWidth++;
	} else {
		// Set Circle Hidden
		circleHidden = true;
	}

	// Check Circle Size Height
	if(circleSizeHeight <= height-height/2) {
		// Increment Circle Size Height Variable
		circleSizeHeight++;
	} else {
		// Set Circle Hidden
		circleHidden = true;
	}

	// Check Circle Hidden State
	if(!circleHidden) {
		// Drawn Foreground Ellipse (Circle)
		ellipse(width/2, height/2, width-width/2-circleSizeWidth, height-height/2-circleSizeHeight);
	}
}
