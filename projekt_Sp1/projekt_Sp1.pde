int x= 250; // x location
int y= 430; // y location
float thesize = 120; // size
float hjul = thesize/4; // position of wheels relative to car
color fillVal = color(126);
boolean skift = true;
float rspeed = 0.8;
float rspeed1 =0.8;
float bspeed = 0.9;
float ry1 = 90;
float ry2 = 350;
float xpos = 250;
float rectheight = 100;
float ely1 = 50;
//boolean isGameOver = false;
int score = 0;


void setup() {
  size(500, 500);
}

void draw() {

  //speed of the rectangels
  ely1 = ely1 + bspeed;
  ry1 = ry1 + rspeed1;
  ry2 = ry2 + rspeed;

  // if the rect reaches end of window then draw it at the top
  if (ry2 -50 > height ) {
    ry2 = 70;
  }

  // if the rect reaches end of window then draw it at the top
  if (ry1 -50 > height ) {
    ry1 = 70;
  }



  background(#46DB31);
  stroke(0);
  fill(#EA1519);
  rectMode(CENTER);

  // Gade
  fill(175);
  rect(250, 100, 300, 800);

  // Striber på vejen
  fill(255);
  rect(xpos, ry1, 15, 100);
  rect(xpos, ry2, 15, 100);


  //bilkrop
  fill(#EA1519);
  rect(x, y, thesize/2, thesize);


  // hjul
  fill(0);
  rect(x - hjul, y-hjul, hjul/2, hjul);
  rect(x+ hjul, y-hjul, hjul/2, hjul);
  rect(x-hjul, y+hjul, hjul/2, hjul);
  rect(x+hjul, y+hjul, hjul/2, hjul);

  //Forhindring
  ellipseMode(CENTER);
  stroke(#116C2C);
  fill(#116C2C);
  ellipse(100, ely1, 50, 70);
  ellipse(80, ely1, 50, 70);
  ellipse(60, ely1, 50, 40);
  ellipse(120, ely1, 50, 40);

  if (ely1 > height) {
    ely1= 0; // Reset the object to the top
  }
}
//keyPressed() {
void keyPressed() {
  if (keyCode == RIGHT) {
    x = x + 50;
  } else if (keyCode == LEFT) {
    x = x- 50;
  }
}
