// People one;  
 void setup()   
 {     
 size (500,500);
 

 }   
 void draw()   //move and show the bacteria 
 {    
     background(206,255,231);
     //one.show();
 }  
 class ppl    
 {     
   int myColor = color(173,177,255);
   //if(mouseX > x) 
  //   x += (int)(Math.random()*10)-1;
   // else
   //   x += (int)(Math.random()*10)-3;
  

  void show(){
    
    int myX, myY;
    myX = (int)(Math.random()*480);
    myY = (int)(Math.random()*480);
  fill (myColor);  
     ellipse (myX, myY, 20,20);
   fill(19,127,13);
     textSize (30);
     text( "Person", myX, myY);
   
}
 }// end of ppl class 
 
 class car {
   int mmX,mmY;
   mmX = 
   mmY = 
   int carColor = color(250,197,3);
   fill (carColor);
     ellipse(myX, myY, 30,15);
   
 }// end of car class
