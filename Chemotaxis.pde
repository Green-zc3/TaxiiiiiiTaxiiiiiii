ppl [] pOne = new ppl [100];  
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
   for(int i = 0; i< pOne.length; i++){
    pOne[i].show();
    pOne[i].thing();
     
  if(dist(pOne[i].mX, pOne[i].mY, cOne.mmX, cOne.mmY)<20)
    
      fill(255,0,251);
      textSize (32);
      text(" YOU GOT CAUGHT", 100, 250);

 }  
 
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
  mX = mX + (mouseX - mX)*0.006;
  mY = mY + (mouseY - mY)*0.006;
}
  void show(){
    
  fill (myColor);  
     ellipse (mX, mY, 30,30);
   fill(19,127,13);
     textSize (10);
     text( "Person", mX-17, mY+3);
  
}
 }// end of ppl class 
 
 class car {
   float mmX, mmY;
   color carColor;
   
   car(){
   carColor = color(250,197,3);
   }
   
 void show(){
   float mmX = width/2 ;
   float mmY = height/2;
   noStroke();
     fill (carColor);
     ellipse(mmX, mmY, 50,40);
     
     fill(0);
     textSize(24);
     text(" T A X I ", mmX-45,mmY+10);
     
   }
 }// end of car class
