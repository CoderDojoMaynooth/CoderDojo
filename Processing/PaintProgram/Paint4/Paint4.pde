float oldX = 0;
float oldY = 0;

color black= color(0);

int size = 10;


void setup() {
  
  size(500, 500);
  background(255);
}

void draw() {

  stroke(black);
  strokeWeight(size);
  
  fill(black);
  ellipse(width - 50, 40, size, size);

  strokeWeight(size);


  if (mousePressed == true) {

    line(mouseX, mouseY, oldX, oldY);
  }

  oldX=mouseX;
  oldY=mouseY;
}

void keyPressed() {

  if (key == '+' && size < 30) {

    size++;
  }
  if (key == '-' && size > 0) {

    size--;
  }
}