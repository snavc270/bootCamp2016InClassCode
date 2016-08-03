boolean start = true; 
boolean subway = false; 
boolean taxi = false; 

void setup(){
  
}


void draw(){
  if(start ==true){
    println("You arrive in NY."); 
    println("Press a to take the subway"); 
    println("Press b to take a taxi"); 
  }
  if(subway==true){
    println("you take the wrong line. sucks for you."); 
  }
  if(taxi==true){
    println("you arrive on time to your destination"); 
  }
}

void keyPressed(){
  if(keyPressed){
    if(key == 'a'){
      start = false; 
      subway = true; 
    }else if (key =='b'){
      start = false; 
      taxi = true; 
    }
  }
}