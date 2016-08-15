//MFADT Bootcamp 2016
//08.16.2016
//Media
//Pointillism_webcam

//video library
import processing.video.*;
Capture cam;

int smallPoint = 5;
int largePoint = 50;

void setup() {
  size(1280, 480);

  //set up camera
  cam = new Capture(this, 640, 480);
  cam.start();     
  
  background(0);
}

void draw() { 
  //camera display on the left
   if (cam.available()) {
    cam.read();
    image(cam,0,0);
  }
  //map the point size according to mouseY
  float pointillize = map(mouseY, 0, height, smallPoint, largePoint);
  int x = int(random(cam.width));
  int y = int(random(cam.height));
  
  //get the color from the image
  color pix = cam.get(x, y);
  
  //draw
  noStroke();
  //fill(color,alpha)
  fill(pix, 128);
  //drawing display on the right
  ellipse(x+width/2, y, pointillize, pointillize);
}