//MFADT Bootcamp 2016
//08.16.2016
//Media
//Array of Images

//Declare PImage Array
PImage[] images=new PImage[10];
int imageIndex=0;

void setup(){
  size(220,320);
  
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
  
  //draw images one by one
  image(images[imageIndex],0,0);
  imageIndex=(imageIndex+1)% 10;
}