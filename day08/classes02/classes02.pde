//Sketch 1: Class and array of class objects
//inspired from Cars example by Brad Borevitz

int num = 10; // number of ships
Ship[] ships; // array of Ships

void setup() {
  size(500, 500);
  smooth();
  
  //initialize array
  ships = new Ship[num]; 
  
  //array contains Ship objects
  for (int i =0; i<num; i++) {
    ships[i] = new Ship();
  }
}
 
void draw() {
  background(250);
  // draw and move the ships
  for (int i =0; i<num; i++) {
    ships[i].drawShip();
    ships[i].moveShip();
    
  }
}
 
class Ship {
  // fields
  color col;
  int x; 
  int y;
  int speed;
 
  //constructor
  Ship () {
    // assign random values to all fields
    col = color(random(256), random(256), random(256), random(256));
    speed = int(random(1, 10));
    
    
    x = int(random(width));
    y = int(random(height));
  }
 
  // methods
  void drawShip() { // draw spaceship
    
    noStroke();
    fill(col);
    
    ellipse(x, y, 50, 20);
    ellipse(x, y-10,20,20);
    
    
  }
 
  void moveShip() { //move spaceship
    
    // increase value of x based on speed
    x+= speed;
    // check boundary conditions and reset values
    if (x>width && speed>0) {
      x = -20;
      x+= speed;
    }
    
    
  }
  
}