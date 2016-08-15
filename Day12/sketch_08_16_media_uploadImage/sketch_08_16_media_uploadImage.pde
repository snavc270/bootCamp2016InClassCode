//MFADT Bootcamp 2016
//08.16.2016
//Media
//Getting Started with Images

//Declaring a variable of type PImage
PImage img; 

void setup(){
  size(220,320);
  //Add Image to the data folder first
  //Make a new instance of a PImage by loading an image file
  img = loadImage("girl.jpg"); 
}

void draw(){
  background(0);
  image(img,0,0);
}