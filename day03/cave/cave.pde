int step = 0;

void setup(){
  println("~Welcome to the Cave~");
  println(" ");
  println("Do you go in?");
  println("Press 1 for Yes, 2 for No");
}

void draw(){}

void keyPressed(){
  if ( key == '1' && step == 0){
    step = 1;
    println("You went in, watch for bears!");
    println(" ");
    println("Do you take the right fork or the left?");
    println("Press l for left, r for right");
  }else if ( key == '2' && step == 0){
    step = 1;
    println("You didn't go in, watch for Pirates!");
  }else if (key == 'l' && step == 1){
     println(" ");
     println("WTF! It's a Mummy!");
     println(" ");
     println("Do you fight or the run?");
     println("Press 3 to fight, 4 to run");
     step = 2;
  }else if (key == 'r'&& step == 1){
     println(" ");
     println("WTF! It's a bear!");
     println(" ");
     println("Do you fight or the run?");
     println("Press x to fight, o to run");
     step = 2;
  }else if (key == '3' && step == 2){
     println(" ");
     println("The mummy is already dead, as most mummies are.");
     println("You are arrested for defiling a corpse.");
  }else if (key == '4' && step == 2){
     println(" ");
     println("You ran to the next chamber and found gold!");
     println("You win!");
  }else if (key == 'x' && step == 2){
     println(" ");
     println("The bear is stronger.");
     println("You die.");
  }else if (key == 'o' && step == 2){
     println(" ");
     println("Smart choice!");
     println("You come to a fork in the path.");
     println("Press c to continue, press e to exit the cave.");
     step =3;
  }else if (key == 'c' && step == 3){
     println(" ");
     println("WTF! It's a Mummy!");
     println(" ");
     println("Do you fight or the run?");
     println("Press 3 to fight, 4 to run");
     step = 2;
  }else if ( key == 'e' && step == 3){
    step = 1;
    println("You have left the cave, watch for Pirates!");
  }else{
    println("That's not an option. Try again.");
    }
 }
  