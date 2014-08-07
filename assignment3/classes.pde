// Ball Class
class Ball {
  // Class Variables
  color colour;
  float x;
  float y;

  // Default Constructor
  Ball(float _x, float _y, color _colour) {
    // Set Variables
    colour = _colour;
    x = _x;
    y = _y;
  }

  // Draw Function
  void draw() {
    // Clear Fill Colour
    fill(colour);

    // Remove Stroke
    noStroke();

    // Set Mode
    ellipseMode(CENTER);

    // Draw Ball
    ellipse(x, y, cellWidth/4*3, cellHeight/4*3);
  }
}

// Square Class
class Square {
  // Class Variables
  color colour;
  float x;
  float y;

  // Default Constructor
  Square(float _x, float _y, color _colour) {
    // Set Variables
    colour = _colour;
    x = _x;
    y = _y;
  }

  // Draw Function
  void draw() {
    // Clear Fill Colour
    fill(colour);

    // Remove Stroke
    noStroke();

    // Set Mode
    rectMode(CENTER);

    // Draw Rectangle
    rect(x, y, cellWidth/4*3, cellHeight/4*3);
  }
}

// Drag Class
class Drag {
  // Class Variables
  boolean dragged;
  boolean show;
  boolean type;
  color colour;
  float sourceX;
  float sourceY;
  float x;
  float y;

  // Default Constructor
  Drag() {
    dragged = false;
    show = false;
  }

  // Fill Function
  void fill() {
    // Check Show
    if (show) {
      // Set Temporary Transperant Colour
      color colourTemp = color(red(colour), green(colour), blue(colour), 200);

      // Check Type == Square
      if (type) {
        // Initialise Class
        Square shape = new Square(x, y, colourTemp);

        // Draw Shape
        shape.draw();
      }
      // Check Type == Ball
      else {
        // Initialise Class
        Ball shape = new Ball(x, y, colourTemp);

        // Draw Shape
        shape.draw();
      }
    }
  }
}

// Grid Class
class Grid {
  // Class Variables
  boolean lock;
  boolean show;
  boolean type;
  color colour;
  int column;
  int row;

  // Default Constructor
  Grid(int _column, int _row) {
    lock = false;
    show = false;
    column = _column;
    row = _row;
  }

  // Fill Function
  void fill() {
    // Check Show
    if (show) {
      // Set X & Y
      float x = findX(column);
      float y = findY(row);

      // Check Type == Square
      if (type) {
        // Initialise Class
        Square shape = new Square(x, y, colour);

        // Draw Shape
        shape.draw();
      }
      // Check Type == Ball
      else {
        // Initialise Class
        Ball shape = new Ball(x, y, colour);

        // Draw Shape
        shape.draw();
      }
    }
  }
}

