// Assigment 1 - Started 15-03-2013
// Max Schaefer (43263798)

// Initialise Variables
boolean fadeIn;
int fadeInCount, currentCircleX, currentCircleY, previousCircleX, previousCircleY;

// Setup Function
void setup() {
  // Set Size
  size(300, 400);
  
  // Set Background
  background(#72EF82);
  
  // Set Fill Options
  fill(255, 0, 0);
  
  // Set Stroke Options
  stroke(1);
  
  // Set Default previousCircleX/Y
  previousCircleX = width/2;
  previousCircleY = height/2;
  
  // Draw Initial Circle
  ellipse(previousCircleX, previousCircleY, 50, 50);
}

// Draw Function
void draw() {
  // Check Frame State
  if(fadeIn) {
    // Check Frame Number
    if(fadeInCount <= 60) {
      // Set Fill Options (Constrain To Limit Of 255)
      fill(constrain(fadeInCount*6, 0, 255), 0, 0);
      
      // Set Stroke Options
      stroke(1);
  
      // Draw Circle
      ellipse(previousCircleX, previousCircleY, 50, 50);
      
      // Increment Frame Number
      fadeInCount++;
    } else {
      // Reset Frame State
      fadeIn = false;
    }
  }
}

// Key Press Function
void keyPressed() {
  // Reset Frame State
  fadeIn = false;
  
  // Reset Frame Number
  fadeInCount = 0;

  // Call Setup Function
  setup();
}

// Mouse Click Function
void mouseClicked() {
  // Reset Frame State
  fadeIn = false;
  
  // Reset Frame Number
  fadeInCount = 0;
  
  // Set Present Mouse Variables (CurrentMouse + PreviousMouse)/2
  currentCircleX = (mouseX+previousCircleX)/2; 
  currentCircleY = (mouseY+previousCircleY)/2;
  
  // Set Fill Options (Previous)
  fill(255, 0, 0);
  
  // Set Stroke Options (Previous)
  stroke(1);
  
  // Draw Circle (Previous)
  ellipse(previousCircleX, previousCircleY, 50, 50);
  
  // Set Fill Options (Line)
  fill(0);
  
  // Set Stroke Options (Line)
  stroke(2);
  
  // Draw Line
  line(previousCircleX, previousCircleY, currentCircleX, currentCircleY);
  
  // Set Fill Options
  fill(0);
  
  // Set Stroke Options
  stroke(1);
  
  // Draw Circle
  ellipse(currentCircleX, currentCircleY, 40, 40);
  
  // Set Previous Mouse Variables
  previousCircleX = currentCircleX;
  previousCircleY = currentCircleY;
  
  // Set Frame State
  fadeIn = true;
}
