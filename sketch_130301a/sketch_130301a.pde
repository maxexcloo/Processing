// Smiley Face (Week 1) - 01-03-2013
// Max Schaefer (43263798)

// Background Colour
background(255);

// Applet Size
size(400, 400);

// Face
fill(#FFEAEA);
strokeWeight(2);
ellipse(200, 200, 360, 360);

// Eye (Left)
noFill();
strokeWeight(4);
ellipse(120, 140, 60, 40);
fill(0);
strokeWeight(2);
ellipse(120, 140, 14, 12);
//strokeWeight(8);
//line(120, 135, 120, 145);
//line(120, 100, 120, 180);

// Eyebrow (Left)
noFill();
strokeWeight(3);
arc(120, 140, 80, 60, 0-radians(90)-radians(20), 0-radians(90)+radians(40));

// Eye (Right)
noFill();
strokeWeight(4);
ellipse(280, 140, 60, 40);
fill(0);
strokeWeight(2);
ellipse(280, 140, 14, 12);
//strokeWeight(8);
//line(280, 135, 280, 145);
//line(280, 100, 280, 180);

// Eyebrow (Right)
noFill();
strokeWeight(3);
arc(280, 140, 80, 60, 0-radians(90)-radians(50), 0-radians(90)+radians(10));

// Nose
strokeWeight(4);
line(200, 180, 190, 220);
line(190, 220, 210, 220);
//line(200, 200, 200, 240);

// Mouth
arc(200, 260, 200, 200, 0, PI, CHORD);

