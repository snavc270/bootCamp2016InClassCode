//MFADT Bootcamp 2016
//08.16.2016
//Media
//Pixel_2

void setup(){
  size(200,200);
  
  //loop through every pixel
  loadPixels();
}

void draw(){
  
  //loop through every pixel row
  for (int x=0; x<width; x++){
    for(int y=0; y<height;y++){
      
      //use the formula to find the 1D location
      int loc = x+y*width;
      float distance = dist(x,y,mouseX,mouseY);
      pixels[loc] = color(distance);
    }
  }
  updatePixels();
}