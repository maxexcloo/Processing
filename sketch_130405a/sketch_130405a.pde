final int DIA = 30;

void setup() {
  size(300, 300);
  background(255);
}

void draw() {
  noFill();
  stroke(100);
  rect(width/3, height/3, width/3, height/3);
}

// DO NOT MODIFY CODE BEFORE THIS LINE

// Square Check Circle Draw (Week 6, Question 5) - 05-04-2013
// Max Schaefer (43263798)

void mousePressed() {
  // Reset Background
  background(255);
  
  // Set Fill Colour
  fill(255, 0, 0);
  
  // Remove Stroke
  noStroke();
  
  // Check If Mouse Click Is Inside Square
  if(isBetween(mouseX, width/3, 2*width/3) && isBetween(mouseY, height/3, 2*height/3))
    // Draw Circle At Mouse
    ellipse(mouseX, mouseY, DIA, DIA);
}

// Function To Test Provided Values & Output True/False Based On Comparison
boolean isBetween(float value, float low, float high) {
  // Check If Value Is Between Low & High
  if((value >= low) && (value <= high))
    // Return True
    return true;
  
  // Conditions Not Met; Return False
  return false;
}

/* Cleaned Header Code Follows (Misread Instructions, Only Added Comments/Formatting :P)
  // Initialise & Set DIA Variable
  final int DIA = 30;
  
  // Setup Function - Run Once At Program Start
  void setup() {
    // Set Window Size
    size(300, 300);
    
    // Set Default Background Colour
    background(255);
  }
  
  // Draw Function - Run Every Frame
  void draw() {
    // Remove Fill
    noFill();
    
    // Set Stroke Colour
    stroke(100);
    
    // Draw Square
    rect(width/3, height/3, width/3, height/3);
  }
*/

