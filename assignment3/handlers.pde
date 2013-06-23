// Key Release Handler
void keyReleased() {
  // Check Key (Space)
  if (keyCode == 32) {
    // Initialise Grid
    gridInitialise();

    // Setup Grid
    gridSetup();
  }
  // Check Key (R)
  else if (keyCode == 82) {
    // Restore File
    selectInput("Restore File:", "fileLoad");
  } 
  // Check Key (S)
  else if (keyCode == 83) {
    // Save File
    selectInput("Save File:", "fileSave");
  }
}

// Mouse Drag Handler
void mouseDragged() {
  // Check Mouse Button
  if (mouseButton == LEFT && drag.dragged) {
    // Set Dragged Object Visibility
    drag.show = true;

    // Set Dragged Object Coordinates
    drag.x = mouseX;
    drag.y = mouseY;
  }
}

// Mouse Press Handler
void mousePressed() {
  // Check Mouse Button
  if (mouseButton == LEFT && inItem(mouseX, mouseY)) {
    // Set Dragged Object Drag State
    drag.dragged = true;

    // Set Dragged Object Type
    drag.type = grid[findColumn(mouseX)][findRow(mouseY)].type;

    // Set Dragged Object Colour
    drag.colour = grid[findColumn(mouseX)][findRow(mouseY)].colour;

    // Set Dragged Object Source
    drag.sourceX = mouseX;
    drag.sourceY = mouseY;
  }
}

// Mouse Release Handler
void mouseReleased() {
  // Check Mouse Button
  if (mouseButton == LEFT) {
    // Check If Inside Boundery
    if (inCanvas(mouseX, mouseY)) {
      // Check Source Object Lock State
      if (!grid[findColumn(drag.sourceX)][findRow(drag.sourceY)].lock && !grid[findColumn(mouseX)][findRow(mouseY)].lock)
        // Set Source Object Visibility
        grid[findColumn(drag.sourceX)][findRow(drag.sourceY)].show = false;

      // Check Dragged Object Drag State
      if (drag.dragged && !grid[findColumn(mouseX)][findRow(mouseY)].lock) {
        // Set Object Visibility
        grid[findColumn(mouseX)][findRow(mouseY)].show = true;

        // Set Object Type
        grid[findColumn(mouseX)][findRow(mouseY)].type = drag.type;

        // Set Object Colour
        grid[findColumn(mouseX)][findRow(mouseY)].colour = drag.colour;
      }
    }

    // Set Dragged Object Drag State
    drag.dragged = false;

    // Set Dragged Object Visibility
    drag.show = false;
  }

  // Check Mouse Button
  if (mouseButton == RIGHT && inItem(mouseX, mouseY))
    // Check Object Lock State
    if (!grid[findColumn(mouseX)][findRow(mouseY)].lock)
      // Hide Object
      grid[findColumn(mouseX)][findRow(mouseY)].show = false;
}

