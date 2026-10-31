fih [] blob = new fih [2];
hearty []  Hearts = new hearty [100];
void setup()
{
  size(400,400);
  background(0,45,103,10);
  Hearts = new hearty();
  for(int i = 0; i< Hearts.length; i++)
    Hearts [i] = new hearty();
  
}
void draw()
{
  for(int i = 0; i< 100; i++)
 // Hearts[i].move();
  Hearts[i].show();
}
class hearty
{
  double myX, myY, mySpeed, myColor;
  int myAngle;
  
 hearty()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*16;
    myAngle = (int)(Math.random()*2*Math.PI);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*6),(int)(Math.random()*140));
  }//end heart
  
  void move()
  {
    
  }//end move
  
  void show()
  {
  float myX, myY;
  myX = 200;
  myY = 200;
  //fill ((int)(Math.random()*255)+1, (int)(Math.random()*100)+1, (int)(Math.random()*80)+1);
  fill(255, 0, 100);
  ellipse(myX- 35, myY- 20, 90, 90);
  ellipse(myX+ 35, myY- 20, 90, 90);
  triangle(myX- 77,myY - 10, myX + 77, myY - 10, myX, myY + 95);
  
  }//end show
  
}//end hearty class

class fih extends hearty//inherits from Particle
{
  fih(){
   myY = 400;
   myX = 250;
  
  }//end fih
}
