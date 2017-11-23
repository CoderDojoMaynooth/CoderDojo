float oldX = 0;
float oldY = 0;

color black= color(0);
color white= color(255);
color red = color(255, 0, 0);

color selectedColor = black;


int size = 10;


void setup() {
  
  size(500, 500);
  background(255);
}

void draw() {

  stroke(black);

  strokeWeight(1);
  fill(white);
  rect(0, 0, width, 70 );
  
  fill(red);
  rect(10, 10, 25, 25 );

  fill(black);
  rect(10, 35, 25, 25);
  
  fill(selectedColor);
  ellipse(width - 50, 40, size, size);

  strokeWeight(size);

  if (mousePressed) {
    
    if (mouseX > 10 && mouseX < 35) {
      
      if (mouseY > 10 && mouseY < 35) {

        selectedColor = red;
      }

      if (mouseY > 35 && mouseY < 60) {
        
        selectedColor = black;
      }
    }
  }

  if (mousePressed == true) {

    stroke(selectedColor);
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