// Drag & Drop Rectangle (Week 7, Question 5) - 12-04-2013
// Max Schaefer (43263798)

// Set Variables For Rectangle Start Position
int rectangleStartX;
int rectangleStartY;

// Set Variables For Rectangle End Position
int rectangleEndX;
int rectangleEndY;

// Set Variables For Rectangle Pressed State
boolean rectanglePressed = false;

// Setup Function - Run Once At Program Start
void setup() {
  // Set Window Size
  size(300, 300);

  // Set Background Colour
  background(255);
}

// Draw Function - Run Every Frame
void draw() {
  // Clear Canvas
  background(255);

  // Draw Rectangle
  drawRectangle(rectangleStartX, rectangleStartY, rectangleEndX, rectangleEndY, rectanglePressed);

  // Draw Rectangle Area Text
  drawRectangleAreaText();
}

// Mouse Dragged Function
void mouseDragged() {
  // Set Rectangle End Position
  rectangleEndX = mouseX;
  rectangleEndY = mouseY;
}

// Mouse Press Function
void mousePressed() {
  // Set Rectangle Pressed State
  rectanglePressed = true;

  // Set Rectangle Start Position
  rectangleStartX = mouseX;
  rectangleStartY = mouseY;
}

// Mouse Release Function
void mouseReleased() {
  // Set Rectangle Pressed State
  rectanglePressed = false;
}

// Function To Draw Rectangle
void drawRectangle(int startX, int startY, int endX, int endY, boolean pressed) {
  // Check Pressed State & Set Fill Colour
  if (pressed)
    // Set Fill Colour (Blue)
    fill(0, 0, 255);
  else
    // Set Fill Colour (Red)
    fill(255, 0, 0);

  // Clear Stroke Weight
  noStroke();

  // Draw Rectangle
  rect(startX, startY, returnDistance(startX, endX), returnDistance(startY, endY));
}

// Function To Draw Rectangle Area Text
void drawRectangleAreaText() {
  // Set Text Colour
  fill(0);

  // Set Text Size
  textSize(24);

  // Set Text Alignment
  textAlign(CENTER, CENTER);

  // Draw Text
  text(returnArea(rectangleStartX, rectangleStartY, rectangleEndX, rectangleEndY), width/2, height/2);
}

// Function To Return Area
int returnArea(int startX, int startY, int endX, int endY) {
  // Return Area (Rounded & Positive)
  return round(abs(returnDistance(startX, endX)) * abs(returnDistance(startY, endY)));
}

// Function To Return Distance
int returnDistance(int start, int end) {
  // Check If Start Is More Than End
  if (start < end)
    // As End Is Lower Than Start, Return A Positive Distance
    return end - start;
  else
    // As End Is Lower Than Start, Return A Negative Distance
    return -(start - end);
}

