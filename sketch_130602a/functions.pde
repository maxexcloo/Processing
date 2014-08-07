// Function To Draw Rectangle
void drawRectangle(int x1, int y1, int x2, int y2) {
  // Set Fill Options
  fill(colour);

  // Set Stroke Options
  noStroke();

  // Draw Rectangle
  rect(x1, y1, x2, y2);
}

// Function To Read File
void readFile() {
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
    // Strip Useless Characters
    line = line.replace(" ", "");
    line = line.replace("(", "");
    line = line.replace(")", "");

    // Split String Into Array
    int[] temp = int(split(line, ','));

    // Check Position Array
    if (position[0] == 0) {
      position[0] = temp[0];
      position[1] = temp[1];
    } 
    else {
      position[2] = temp[0];
      position[3] = temp[1];
    }
  }
  // Finished Reading
  else {
    // Draw Rectangle
    drawRectangle(position[0], position[1], position[2], position[3]);

    // Stop Loop
    noLoop();
  }
}

