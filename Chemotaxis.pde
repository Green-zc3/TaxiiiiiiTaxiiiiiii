ppl [] pOne = new ppl [21];  
car cOne;
 void setup()   
 {     
 size (500,500);
 cOne = new car ();
 for(int i = 0; i< pOne.length; i++)
   pOne[i] = new ppl (random(width), random(height));

 }   
 void draw()   
 {    
     background(206,255,231);
   for(int i = 0; i< pOne.length; i++)
    pOne[i].show();
     cOne.show();
 }  
 class ppl    
 {     
   float mX, mY;
   color myColor;

ppl(float startX, float startY){
  mX = startX;
  mY = startY;
  myColor = color(173,177,255);
}
void thing()
{
  mX = mX + (mouseX - mX)*0.03;
  mY = mY + (mouseY - mY)*0.03;
}
  void show(){
    
  fill (myColor);  
     ellipse (mX, mY, 30,30);
   fill(19,127,13);
     textSize (20);
     text( "Person", mX-10, mY+5);
  
}
 }// end of ppl class 
 
 class car {
   int mmX, mmY;
   color carColor;
   
   car(){
   carColor = color(250,197,3);
   }
   
 void show(){
   mmX = mouseX;
   mmY = mouseY;
   noStroke();
     fill (carColor);
     ellipse(mmX, mmY, 50,40);
     
     fill(0);
     textSize(24);
     text(" T A X I ", mmX-35,mmY+10);
     
   }
 }// end of car class
