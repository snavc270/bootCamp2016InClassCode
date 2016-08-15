//MFADT Bootcamp 2016
//08.16.2016
//Media
//Translate, Scale

//Declare PImage Array
PImage[] images=new PImage[10];
int imageIndex=0;

void setup(){
  size(1000,800);
  
  //Name the images in sequence, start from 0, save them in data folder
  //Use for loop to load array of images
  for ( int i = 0; i< 10; i++ ){
  images[i]=loadImage(i+".png");
  }
  
  //Set speed
  frameRate(10);
}

void draw(){
  background(255);
  
  //Change imageMode to Center
  imageMode(CENTER);
  
  //Let the images follow your mouse
  translate(mouseX,mouseY);
  
  //Map the scale rate according to mouseY
  float size = map(mouseY, 0, height, 0.5, 1.5);
  scale(size);
  
  //draw
  image(images[imageIndex],0,0);
  imageIndex=(imageIndex+1)% 10;
}