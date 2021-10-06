Die bob;
boolean loop = false;
void setup()
{
  background(153, 209, 255);
  size(420,500);
  noLoop();
}
void mousePressed(){ //rolls when click with no loop
  if (loop == false)
    redraw();
}
void keyPressed(){ //sets up loop and no loop
  if (loop == false){
    loop();
    frameRate(1.8);
    loop = true;
  } else {
    noLoop();
    frameRate(60);
    loop = false;
  }
}

void draw()
{
  background(153, 209, 255);
  int sum = 0;
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  int num4 = 0;
  int num5 = 0;
  int num6 = 0;
  for(int j = 0; j < 420; j += 42){ // 10 rows
    for(int i = 0; i < 420; i += 42){ // 10 columns
      bob = new Die(i, j); // creating die + counting number of die
      bob.show();
      sum = sum + bob.number;
      if (bob.number == 1)
       num1++;
       else if (bob.number == 2)
       num2++;
       else if (bob.number == 3)
       num3++;
       else if (bob.number == 4)
       num4++;
       else if(bob.number == 5)
       num5++;
       else
       num6++;
    }
 }
  textSize(20); // text
  fill(0);
  text("Total: " + sum, 250, 460);
  textSize(10);
  fill(255,0,0);
  text("Total 1's: " + num1, 20, 440);
  fill(255, 140, 0);
  text("Total 2's: " + num2, 20, 460);
   fill(230, 208, 44);
  text("Total 3's: " + num3, 20, 480);
   fill(0, 166, 11);
  text("Total 4's: " + num4, 100, 440);
    fill(0,0,255);
  text("Total 5's: " + num5, 100, 460);
  fill(161, 3, 252);
  text("Total 6's: " + num6, 100, 480);
}
class Die
{
  int number, myX, myY;
  Die(int x, int y)
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    number = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    stroke(1);
    fill(255,255,255);
    rect(myX, myY, 40, 40);
    noStroke();
    if (number == 1){
      fill(255,0,0); // red
      ellipse(myX + 20, myY + 20, 5, 5);
    } else if (number == 2){
      fill(255, 140, 0); // orange
      ellipse(myX + 30, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 30, 5, 5);
    } else if (number == 3){
      fill(230, 208, 44); // yellow
      ellipse(myX + 30, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 30, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
    } else if (number == 4){
      fill(0, 166, 11); // green
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 30, 5, 5);
      ellipse(myX + 30, myY + 10, 5, 5);
      ellipse(myX + 30, myY + 30, 5, 5);
    } else if (number == 5){
      fill(0,0,255); // blue
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 30, 5, 5);
      ellipse(myX + 30, myY + 10, 5, 5);
      ellipse(myX + 30, myY + 30, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
    } else {
      fill(161, 3, 252); // purple
      ellipse(myX + 12, myY + 10, 5, 5);
      ellipse(myX + 12, myY + 20, 5, 5);
      ellipse(myX + 12, myY + 30, 5, 5);
      ellipse(myX + 28, myY + 10, 5, 5);
      ellipse(myX + 28, myY + 20, 5, 5);
      ellipse(myX + 28, myY + 30, 5, 5);
    }
  }
}
