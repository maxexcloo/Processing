// Magic Line Drawing With Odd Circle Bits (Week 2, Question 4) - 08-03-2013
// Max Schaefer (43263798)

// Setup Program
void setup() {
  // Set Size
  size(200, 200);
  
  // Allow Window Resize
  if (frame != null) {
    // Allo Resize
    frame.setResizable(true);
  }
}

// Draw Program
void draw() {
  // Set Background
  background(255);
  
  // Set Stroke Weight
  strokeWeight(1);
  
  // Line (Top)
  line(30, 30, width-30, 30);
  
  // Line (Bottom)
  line(30, height-30, width-30, height-30);
  
  // Line (Left)
  line(30, 30, 30, height-30);
  
  // Line (Right)
  line(width-30, 30, width-30, height-30);
  
  // Line (Cross 1)
  line(30, 30, width-30, height-30);
  
  // Line (Cross 2)
  line(30, height-30, width-30, 30);
  
  // Circle (Top Left)
  ellipse(30, 30, 10, 10);
  
  // Circle (Top Right)
  ellipse(width-30, 30, 10, 10);
  
  // Circle (Bottom Left)
  ellipse(30, height-30, 10, 10);
  
  // Circle (Bottom Right)
  ellipse(width-30, height-30, 10, 10);
  
  // Circle (Middle)
  ellipse(width/2, height/2, 10, 10);
}

