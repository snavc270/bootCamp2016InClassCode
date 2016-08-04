//state is an integer 
//used to keep track of place in the narrative 
int state = 0; 
PFont f; 
PImage blob; 

void setup(){
  size(500, 500); 
  f = createFont("Arial", 16, true); 
  blob = loadImage("blob.png"); 
}

void draw(){
  if( state == 0) {
    //println("You are very small");
    //println("...but not quite sure what you are"); 
    //println("press A to explore"); 
    //println("press B to hide"); 
    //ellipse(width/2, height/2, 50, 50); 
    background(255); 
    textAlign(CENTER); 
    textFont(f, 30); 
    fill(0); 
    text("press A to explore, press B to hide", width/2, height/2); 
    imageMode(CENTER); 
    image(blob, width/2, height/2); 
    state = 1; 
    
 }
 
   if(state == 2){
     //println("you smell a delicious smell"); 
     //println("and discover a donut!"); 
     //println("press A to eat");
     //println("press B to take it to your friend");
     
     background(255); 
     text("press A to eat, press B to hide", width/2, height/2); 
     
     //some function 
     state = 5; 
   }
   
   if(state == 3){
     println("ah! watch out!"); 
     println("you dead"); 
     state = 6; 
   }
}

void keyPressed(){
  if(state == 1) {
    if( key == 'a'){
      state = 2; 
    }else if (key == 'b'){
      state = 3; 
    }
  }
  
  if(state == 5){
    if(key == 'a'){
      println("something happens"); 
      
    }else if (key == 'b'){
      println("something else happens"); 
    }
  }
}