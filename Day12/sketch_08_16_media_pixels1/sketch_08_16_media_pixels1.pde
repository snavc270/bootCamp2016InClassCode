//MFADT Bootcamp 2016
//08.16.2016
//Media
//Pixel_1

void setup(){
  size(200,200);
  
  //loop through every pixel
  loadPixels();
}

void draw(){
    for (int i=0; i<pixels.length; i++){
      
    //pick a random number, 0 to 255
    float rand = random(255);
    //create a grayscale color based on random number
    color c = color(rand);
    //et pixel at that location to random color

    pixels[i] = c;
  }
  updatePixels();
}