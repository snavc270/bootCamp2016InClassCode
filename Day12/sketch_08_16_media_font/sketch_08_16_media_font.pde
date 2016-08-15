//MFADT Bootcamp 2016
//08.16.2016
//Media
//Font

//Declare PFont Variable
PFont font; 

void setup(){
  size(220,320);
  //The font should be located in data folder first
  //Load font
  font = loadFont("Impact-24.vlw");
}

void draw(){
  background(255);
  textFont(font,16);
  fill(0);
  //Display text
  text("Hello World",20,100);
}