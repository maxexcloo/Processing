// Read File (Week 12, Question 3) - 31-05-2013
// Max Schaefer (43263798)

// Initialise Buffered Reader Variables
BufferedReader file;
String line;

// Initialise Rectangle Position Variables
int[] position = new int[4];

// Set Rectangle Colour Variable
color colour = color(random(255), random(255), random(255));

// Setup Function - Run Once At Program Start
void setup() {
  // Set Window Size
  size(400, 400);

  // Open File
  file = createReader("points.txt");
}

// Draw Function - Run Every Frame
void draw() {
  // Reset Canvas
  background(255);

  // Read File
  readFile();
}

