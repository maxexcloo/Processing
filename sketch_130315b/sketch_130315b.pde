// Interactive Picture (Week 3, Question 4) - 15-03-2013
// Max Schaefer (43263798)

// Setup Function
void setup() {
	// Set Size
	size(256, 256);

	// Set Background
	background(#F4D3A0);
}

// Draw Function
void draw() {}

// Mouse Click Function
void mouseClicked() {
	// Set Options
	fill(mouseX, mouseY, 0);

	// Draw Circle
	ellipse(mouseX, mouseY, mouseY, mouseY);
}
