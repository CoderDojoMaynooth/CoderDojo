PFont font;
int base=40;
float x,y,gameScore=0;
float changeX=-5;
float changeY=-5;
int gameOver=0;
float Multiplier=1.0;
int gameLevel=1;
void setup()
{
  size(760, 640);
  x=(int)random(width);
  y=height-base;
  font = loadFont("BellMTItalic-48.vlw");
  textFont(font, 32);
}

void draw()
{
  if(gameOver==0)
  {
  background(209,157,44); 
  text("LEVEL "+gameLevel,width/2,height/2-50);
  text("SCORE "+gameScore,width/2,height/2);
  stroke(51,149,24);
  fill(51,149,24);
  rect(mouseX,height-base,200,base);
  rect(mouseX,0,200,base);
  ellipse(x,y,10,10);
  stroke(0);
  fill(0);
  x=x+changeX;
  y=y+changeY;
  if(x<0 | x>width)
  {
    changeX=-changeX;
  }
  if(y<base)
  {
    if(x>mouseX && x<mouseX+200)    {
      changeY=-changeY; //bounce back
      gameScore++;
      if((gameScore%3)==0)
      {
        changeX=Multiplier*changeX;
        changeY=Multiplier*changeY;
        gameLevel++;
      }
    }else{
      gameOverSplash();
    }
  }

  if(y>height-base)  {
    if(x>mouseX && x<mouseX+200)    {
      changeY=-changeY; //bounce back
      gameScore++;
      if((gameScore%3)==0)
      {
        changeX=Multiplier*changeX;
        changeY=Multiplier*changeY;
        gameLevel++;
      }
    }else{
      gameOverSplash();
    }
  }
  }
  else  {
    background(100,100,200);
    text("Game Over! Your Score: "+gameScore,width/2-150,height/2);
    text("Amit @ Speaking Technology",width/2-180,height/2+30);
    text("Find Source Codes @ www.123mylist.com",width/2-210,height/2+60);
  }}
void gameOverSplash()
{
  gameOver=1;
}
void mouseClicked()
{
  changeY=-changeY;
  gameScore=0;
  gameLevel=1;
  gameOver=0;
}
