float oldX = 0;
float oldY = 0;

color black= color(0);
color white= color(255);
int size = 10;


void setup() {
  
  size(500, 500);
  background(255);
}

void draw() {

  strokeWeight(1);
  fill(white);
  rect(0, 0, width, 70 );
  
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