//MFADT Bootcamp 2016
//08.16.2016
//Media
//Pointillism

//Pointillism by Daniel Shiffman. 
//Mouse horizontal location controls size of dots. 
//Creates a simple pointillist effect using ellipses colored according to pixels in an image.


PImage img;
int smallPoint, largePoint;

void setup() {
  size(640, 360);
  img = loadImage("img.jpg");
  smallPoint = 4;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  
  //get the color from the image
  color pix = img.get(x, y);
  
  //draw
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}