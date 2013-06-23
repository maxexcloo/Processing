// Return Inside Canvas State
boolean inCanvas(float x, float y) {
  // Check Inside Canvas
  if (x > 0 && x < WIDTH && y > 0 && y < HEIGHT)
    // Return True
    return true;
  // Return False
  return false;
}

// Return Inside Item State
boolean inItem(float x, float y) {
  // Check Item Shown
  if (grid[findColumn(x)][findRow(y)].show) {
    // Check Type == Square
    if (grid[findColumn(x)][findRow(y)].type) {
      // Check If Inside Square
      if (mouseX > findX(findColumn(x))-cellWidth/4*3/2 && mouseX < findX(findColumn(x))+cellWidth/4*3/2 && mouseY > findY(findRow(y))-cellHeight/4*3/2 && mouseY < findY(findRow(y))+cellHeight/4*3/2)
        // Return True
        return true;
    // Check Type == Ball
    } else {
      // Check If Inside Ball
      if (dist(findX(findColumn(x)), findY(findRow(y)), x, y) <= cellWidth/4*3/2)
        // Return True
        return true;
    }
  }

  // Return False
  return false;
}

// Return X From Column
float findX(int column) {
  // Return Centered X Value
  return cellWidth*column+cellWidth/2;
}

// Return Y From Row
float findY(int row) {
  // Return Centered X Value
  return cellHeight*row+cellHeight/2;
}

// Return Column At X
int findColumn(float x) {
  // Return Column
  return int(x/cellWidth);
}

// Return Row At Y
int findRow(float y) {
  // Return Row
  return int(y/cellHeight);
}

// Function To Load File
void fileLoad(File path) {
  // Check Selection
  if (path != null && path.exists()) {
    // Initialise Grid
    gridInitialise();

    // Setup Grid
    gridSetup();

    // Initialise Reader
    BufferedReader file = createReader(path);

    // Initialise Line Variable
    String line = "";

    // Loop Through Lines
    while (line != null) {
      // Try Statement
      try {
        // Load Line In File
        line = file.readLine();
      }
      // Catch Exceptions
      catch (IOException e) {
        // Set Line To Null
        line = null;
      }

      // Check Line Status
      if (line != null) {
        // Split String Into Array
        String[] temp = split(line, ',');

        // Set Booleans
        grid[int(temp[0])][int(temp[1])].show = boolean(temp[2]);
        grid[int(temp[0])][int(temp[1])].type = boolean(temp[3]);

        // Set Colour
        grid[int(temp[0])][int(temp[1])].colour = color(int(temp[4]), int(temp[5]), int(temp[6]));
      }
    }
  }
}

// Function To Save File
void fileSave(File path) {
  // Check Selection
  if (path != null) {
    // Initialise Writer
    PrintWriter file = createWriter(path);

    // Loop Through Columns
    for (int column = 0; column < gridColumns; column++)
      // Loop Through Rows
      for (int row = 0; row < gridRows; row++)
        // Write To File
        file.println(column + "," + row + "," + grid[column][row].show + "," + grid[column][row].type + "," + int(red(grid[column][row].colour)) + "," + int(green(grid[column][row].colour)) + "," + int(blue(grid[column][row].colour)));

    // Flush Text To File
    file.flush();

    // Close File
    file.close();
  }
}

// Function To Draw Grid
void gridDraw() {
  // Clear Fill Colour
  noFill();

  // Set Stroke Colour
  stroke(0);

  // Draw Columns Through Loop
  for (int column = 1; column < gridColumns; column++)
    // Draw Column
    line(cellWidth*column, 0, cellWidth*column, HEIGHT);

  // Draw Rows Through Loop
  for (int row = 1; row < gridRows; row++)
    // Draw Row
    line(0, cellHeight*row, WIDTH, cellHeight*row);
}

// Function To Fill Grid
void gridFill() {
  // Loop Through Columns
  for (int column = 0; column < gridColumns; column++)
    // Loop Through Rows
    for (int row = 0; row < gridRows; row++)
      // Fill Cell
      grid[column][row].fill();
}

// Function To Initialise Grid
void gridInitialise() {
  // Loop Through Columns
  for (int column = 0; column < gridColumns; column++)
    // Loop Through Rows
    for (int row = 0; row < gridRows; row++)
      // Initialise Object
      grid[column][row] = new Grid(column, row);
}

// Function To Setup Grid
void gridSetup() {
  // Loop Through Columns
  for (int column = 0; column < gridColumns; column++) {
    // Lock Cell
    grid[column][0].lock = true;
    grid[column][(int)gridRows-1].lock = true;

    // Show Cell
    grid[column][0].show = true;
    grid[column][(int)gridRows-1].show = true;

    // Set Type
    grid[column][0].type = true;
    grid[column][(int)gridRows-1].type = false;

    // Set Colour
    grid[column][0].colour = color(random(255), random(255), random(255));
    grid[column][(int)gridRows-1].colour = grid[column][0].colour;
  }
}

