// Assignment 3 (Avanced) - 27-05-2013
// Max Schaefer (43263798)

// Set Variables For Window Size
final int WIDTH = 500;
final int HEIGHT = 500;

// Set Variables For Grid
float gridColumns = 15;
float gridRows = 15;

// Set Variables For Cells
float cellWidth = WIDTH/gridColumns;
float cellHeight = HEIGHT/gridRows;

// Initialise Classses
Drag drag = new Drag();
Grid grid[][] = new Grid[(int)gridColumns][(int)gridRows];

// Setup Function - Run Once At Program Start
void setup() {
  // Set Window Size
  size(WIDTH, HEIGHT);

  // Reset Canvas
  background(255);

  // Initialise Grid
  gridInitialise();

  // Setup Grid
  gridSetup();
}

// Draw Function - Run Every Frame
void draw() {
  // Reset Canvas
  background(255);

  // Draw Grid
  gridDraw();

  // Fill Grid
  gridFill();

  // Draw Drag
  drag.fill();
}

