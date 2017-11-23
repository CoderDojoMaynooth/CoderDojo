float oldX = 0;
float oldY = 0;

color black= color(0);
color white= color(255);
color red = color(255, 0, 0);

color selectedColor = black;


int size = 10;

void drawPalette(int xPosition, int yPosition, color paletteColor)
{
  fill(paletteColor);
  rect(xPosition, yPosition, 25, 25 );

  if (mousePressed == true && mouseX > xPosition && mouseX < (xPosition+25) && mouseY > yPosition && mouseY < (yPosition+25)) {

    selectedColor = paletteColor;
  }
}

void setup() {

  size(500, 500);
  background(255);
}

void draw() {

  stroke(black);

  strokeWeight(1);
  fill(white);
  rect(0, 0, width, 70 );


  drawPalette(10, 10, red);
  drawPalette(10, 35, black);


  if (mousePressed == true) {

    stroke(selectedColor);
    line(mouseX, mouseY, oldX, oldY);
  }

  oldX=mouseX;
  oldY=mouseY;
}