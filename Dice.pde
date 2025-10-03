Dice dice;
void setup()
{
  background(240, 160, 150);
  size(500, 300);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  int gridSpacing = 55;
  int xOffset = 4;
  int yOffset = 15;
  
  int total = 0;
  for (int column = 0; column < 9; column+=1)
  {
    for (int row = 0; row < 5; row+=1)
    {
      dice = new Dice(column*gridSpacing + xOffset, row*gridSpacing + yOffset);
      dice.roll();
      total+= dice.output;
      dice.show();
    }
  }
  fill(240, 160, 150);
  rect(220,285,60,15);
  fill(0,0,0);
  text("Total: " + total, 250, 290);
}
void mousePressed()
{
  redraw();
}
class Dice
{
  //three member variables
  int output;
  int myX, myY;

  //three member functions
  Dice(int x, int y) //constructor
  {
    //job of the constructor
    // is to intialize member varaibles
    output = 0;
    myX = x;
    myY = y;
  }
  void roll()
  {
    output = ((int)(Math.random()*6) + 1);
  }

  void show()
  {
    stroke(255);
    fill(190, 110, 110);
    if (output == 1) {
      rect(myX, myY, 50, 50);
      fill(255);
      noStroke();
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (output == 2) {
      rect(myX, myY, 50, 50);
      fill(255);
      noStroke();
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (output == 3) {
      rect(myX, myY, 50, 50);
      fill(255);
      noStroke();
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (output == 4) {
      rect(myX, myY, 50, 50);
      fill(255);
      noStroke();
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (output == 5) {
      rect(myX, myY, 50, 50);
      fill(255);
      noStroke();
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else {
      rect(myX, myY, 50, 50);
      fill(255);
      noStroke();
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
  }
}
