// Sudoko Board - Rectangle Drawing (Week 5, Question 6) - 29-03-2013
// Max Schaefer (43263798)

// Set Board Margin Variable
int margin = 15;

// Define Size Variable
int size;

// Setup Function
void setup() {
  // Set Window Size
  size(300, 300);
}

// Draw Function
void draw() {
  // Loop For Small Squares (X Coordinate)
  for(int x = 0; x < 9; x++)
    // Loop For Small Squares (Y Coordinate)
    for(int y = 0; y < 9; y++)
      // Draw Square (Position (X) = Margin + (X/Y * 90), Position (Y) = Margin + (X/Y * 90), Type 1 -  Small Square)
      drawSquare(margin+x*30, margin+y*30, 1);

  // Loop For Large Squares (X Coordinate)
  for(int x = 0; x < 3; x++)
    // Loop For Large Squares (Y Coordinate)
    for(int y = 0; y < 3; y++)
      // Draw Square (Position (X) = Margin + (X/Y * 90), Position (Y) = Margin + (X/Y * 90), Type 2 -  Large Square)
      drawSquare(margin+x*90, margin+y*90, 2);
}

// Function To Draw Square (X Coordinate, Y Coordinate, Type ()
void drawSquare(int x, int y, int type) {
  // Check Type
  if(type == 1) { // Small Square
    // Set Fill
    fill(255);

    // Set Stroke Shade
    stroke(204);

    // Set Stroke Weight
    strokeWeight(1);

    // Set Size Variable
    size = 30;
  } else if(type == 2) { // Large Square
    // Remove Fill
    noFill();

    // Set Stroke Shade
    stroke(0);

    // Set Stroke Weight
    strokeWeight(3);

    // Set Size Variable
    size = 90;
  }

  // Draw Rectangle
  rect(x, y, size, size);
}
