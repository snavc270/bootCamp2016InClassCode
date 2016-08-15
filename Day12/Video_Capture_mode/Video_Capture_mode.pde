// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 10;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto Capture object
Capture video;

String chars = "helloworld";
PFont f;

int mode = 1;

void setup() {
  size(640, 480);
  // Initialize columns and rows
  cols = width / videoScale;
  rows = height / videoScale;
  // Construct the Capture object
  video = new Capture(this, cols, rows);
  video.start();
  f = createFont("Courier", 16);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(0);
  video.loadPixels();

  switch(mode) {
  case 1:
    for (int i = 0; i < cols; i++) {
      // Begin loop for rows
      for (int j = 0; j < rows; j++) {

        // Where are we, pixel-wise?
        int x = i * videoScale;
        int y = j * videoScale;

        int loc = i + j*video.width;

        // Each rect is colored white with a size determined by brightness
        color c = video.pixels[loc];

        // A rectangle size is calculated as a function of the pixel's brightness. 
        // A bright pixel is a large rectangle, and a dark pixel is a small one.
        float sz = (brightness(c)/255)*videoScale; 
        rectMode(CENTER);
        fill(255);
        noStroke();
        rect(x + videoScale/2, y + videoScale/2, sz, sz);
      }
    }
    break;
    
  case 2:
    // Begin loop for columns
    for (int i = 0; i < cols; i++) {
      // Begin loop for rows
      for (int j = 0; j < rows; j++) {

        // Where are we, pixel-wise?
        int x = i * videoScale;
        int y = j * videoScale;
        // Looking up the appropriate color in the pixel array
        color c = video.pixels[i + j * video.width];
        fill(c);
        stroke(0);
        rect(x, y, videoScale, videoScale);
      }
    }
    break;
    
  case 3:
    // Use a variable to count through chars in String
    int charcount = 0;
    // Begin loop for rows
    for (int j = 0; j < rows; j++ ) {
      // Begin loop for columns
      for (int i = 0; i < cols; i++ ) {

        // Where are we, pixel-wise?
        int x = i * videoScale;
        int y = j * videoScale;

        // Looking up the appropriate color in the pixel array
        color c = video.pixels[i + j*video.width];
        // Displaying an individual character from the String instead of a rectangle
        textFont(f);
        fill(c);

        float b = brightness(video.pixels[i+j*video.width]);
        float fontSize = 1+(b/10);
        textSize(fontSize);

        // One character from the source text is displayed colored accordingly to the pixel location. 
        // A counter variable charcount is used to walk through the source String one character at a time.
        text(chars.charAt(charcount), x, y);

        // Go on to the next character
        charcount = (charcount + 1) % chars.length();
      }
    }
    break;
  }
}

void keyPressed(){
  switch(key){
    case 'a':
    mode = 1;
    break;
    case 's':
    mode = 2;
    break;
    case 'd':
    mode = 3;
    break;
  }
}
  