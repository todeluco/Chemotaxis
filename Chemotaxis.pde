 Bacteria[] mickeys;
 void setup()   
 {     
 	size(500,500);
 	frameRate(10);
 	mickeys = new Bacteria[50];
 	for(int i = 0; i < mickeys.length; i++){
 		mickeys[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	   background(0);
 	   for(int i = 0; i < mickeys.length; i++){
 	   	mickeys[i].show();
 	   	mickeys[i].move();
 	   }
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	int bacteriaColor;
 	Bacteria(){
 		myX = 250;
 		myY = 250;
 		bacteriaColor = 50;
 	} 
 	void move(){
 		myX = myX + (int)(Math.random()*11)-5;
 		myY = myY + (int)(Math.random()*11)-5;
 	}
 	void show(){
 		fill(bacteriaColor);
 		stroke((int)(Math.random()*255)+1,
 			   (int)(Math.random()*255)+1,
 			   (int)(Math.random()*255)+1);
 		ellipse(myX-20,myY-25,30,30);
 		ellipse(myX+20,myY-25,30,30);
 		ellipse(myX,myY,50,50);
 		ellipse(myX+8,myY-10,10,20);
 		ellipse(myX-8,myY-10,10,20);
 		ellipse(myX,myY+13,45,25);
 		ellipse(myX,myY,15,10);
 		arc(myX,myY+13,22,33,0,2*PI/2,CHORD);
 	}
 }    
