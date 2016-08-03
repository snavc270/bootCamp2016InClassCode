int x; 

void setup(){
  x = 0; 
}

void draw(){
  
  if(x == 0){
    x =1; 
  }else if (x ==1){
    x = 0; 
  }
  
  println("x is now " + x); 
}