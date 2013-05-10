// Sudoko Board - Line Drawing (Week 5, Question 6) - 29-03-2013
// Max Schaefer (43263798)

// Define Board Margin Variable
int margin = 15;

// Define Position Variable
int position;

// Set Window Size
size(300, 300);

// Set Fill Colour To White
fill(255);

// Disable Stroke
noStroke();

// Draw Board Background
rect(margin, margin, width-(2*margin), height-(2*margin));

// Main Loop
for(int i = 0; i < 14; i++) {
	// Thin Lines
	if(i <= 9) {
		// Set Position Variable
		position = margin+i*30;

		// Set Stroke Colour To Grey
		stroke(204);

		// Set Stroke Weight To 1
		strokeWeight(1);

		// Draw Horizontal Line
		line(margin, position, width-margin, position);

		// Draw Vertical Line
		line(position, margin, position, height-margin);
	// Thick Lines
	} else {
		// Set Position Variable
		position = margin+(i-10)*90;

		// Set Stroke Colour To Grey
		stroke(0);

		// Set Stroke Weight To 3
		strokeWeight(3);

		// Draw Horizontal Line
		line(margin, position, width-margin, position);

		// Draw Vertical Line
		line(position, margin, position, height-margin);
	}
}

/* Note: I originally misread the instructions and didn't realise that I could only use one loop, below is my original incorrect code for posterity:
// Define Board Margin Variable
int margin = 15;

// Set Window Size
size(300, 300);

// Set Fill Colour To White
fill(255);

// Disable Stroke
noStroke();

// Draw Board Background
rect(margin, margin, width-(2*margin), height-(2*margin));

// Set Stroke Colour For Thin Lines To Grey
stroke(204);

// Set Stroke Weight For Thin Lines To 1
strokeWeight(1);

// Loop For Thin Lines
for(int i = 0; i <= 9; i++) {
	// Draw Horizontal Line
	line(margin, margin+i*30, width-margin, margin+i*30);

	// Draw Vertical Line
	line(margin+i*30, margin, margin+i*30, height-margin);
}

// Set Stroke Colour For Thin Lines To Black
stroke(0);

// Set Stroke Weight For Thick Lines To 3
strokeWeight(3);

// Loop For Thick Lines
for(int i = 0; i <= 3; i++) {
	// Draw Horizontal Line
	line(margin, margin+i*90, width-margin, margin+i*90);

	// Draw Vertical Line
	line(margin+i*90, margin, margin+i*90, height-margin);
}
*/

