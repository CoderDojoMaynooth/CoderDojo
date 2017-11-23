
color black= color(0);

void setup() {

  size(500, 500);
  background(255);
}


void draw() {

  stroke(black);
  fill(black);
  float rX = random(10);
  float rY = random(10);

  ellipse(mouseX + rX, mouseY + rY, 10, 10);
}