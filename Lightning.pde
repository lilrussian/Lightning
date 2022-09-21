//make a game where u crack the phone screen 
int startX = 150;
int startY = (int)(Math.random()*500);
int endX = 0;
int endY = (int)(Math.random()*500);
 int crack = 0;
PImage bkg;
PImage brokenScreen;



void setup() {
 size(400,800);
 strokeWeight(5);
 background(255,255,255);
 bkg = loadImage("phone.png");
 brokenScreen = loadImage("brokenScreen.jpg");
 image(bkg,0,0,400,800);
 image(brokenScreen,25,142,353,528);
 
}

void draw(){

  stroke(255,255,255);

 while((endX < 658) && (startY>30)&&(startY<370))
{
  
  endX = startX + (int)(Math.random() * 9);
  endY = startY + (int)(Math.random() * 18)-9 ;

  line(startY, startX, endY, endX);
  startX = endX;
  startY = endY;
  }
}

void mousePressed(){
 crack++;
 startX = 150;
 startY = (int)(Math.random()*400);
 endX = 0;
 endY = (int)(Math.random()*400);
 if ((mouseY > 690)&&(mouseY < 760)&&(mouseX > 166)&&(mouseX < 230)){
     System.out.println("RESET");
    image(brokenScreen,25,142,353,528);
 }
 
}
