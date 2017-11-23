float oldX = 0;
float oldY = 0;

color black= color(0);

void setup() {
  
  size(500, 500);
  background(255);
}

void draw() {

  stroke(black);
  strokeWeight(1);

  line(mouseX, mouseY, oldX, oldY);
 
  oldX=mouseX;
  oldY=mouseY;
}