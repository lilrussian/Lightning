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
 background(0,0,0);
 //String url = "https://i.imgur.com/RKqWoCr.png";
 //String url1 = "https://i.imgur.com/7TYHpLX.jpg";
 bkg = loadImage("images/phone.png");
 brokenScreen = loadImage("images/brokenScreen.jpg");
 image(bkg,0,0,400,800);
 image(brokenScreen,25,142,353,528);
 
}

void draw(){
 image(bkg,0,0,400,800);
 image(brokenScreen,25,142,353,528);
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
