Bacteria bob; 
 void setup()   
 {     
 	size(500,500);
 	frameRate(10);
 	bob = new Bacteria();
 }   
 void draw()   
 {    
 	   background(197);
 	   //bob = new Bacteria();
 	   bob.move();
 	   bob.show();
 }  
 void mousePressed(){
 	redraw();
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
 		myX = myX + (int)(Math.random()*10)-5;
 		myY = myY + (int)(Math.random()*10)-5;
 	}
 	void show(){
 		fill(bacteriaColor);
 		stroke((int)(Math.random()*255)+1,
 			   (int)(Math.random()*255)+1,
 			   (int)(Math.random()*255)+1);
 		ellipse(myX-20,myY-25,25,25);
 		ellipse(myX+20,myY-25,25,25);
 		ellipse(myX,myY,50,50);
 	}
 }    
