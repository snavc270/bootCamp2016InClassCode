int state;

void setup() {
  size(500, 500);
  background(255);
  state = 0;
}


void draw() {

  if (state == 0) {
    println("There's a door.");
    println("A. open the door.");
    println("S. walk away.");
    state = 1;
  }
}


void keyPressed() {
  if (key == 'a') {
    if (state == 1) {
      println(" ");
      println("You opened the door.");
      println("There is a tiger in front of you.");
      println("A. fight!");
      println("S. go back.");
      state = 2;
    } else if (state == 2) {
      println(" ");
      println("Congrats! You killed it!");
      println("Press 'ESC' to leave.");
      state = 2;
    }
  }

  if (key == 's') {
    if (state == 1) {
      println(" ");
      println("I'm sorry but, NO YOU CAN'T!");
      println("A. open the door.");
    } else if (state == 2) {
      println(" ");
      println("The door is locked");
      println("You are eaten by the tiger..");
      println("Press 'ESC' and start again");
    }
  }
}