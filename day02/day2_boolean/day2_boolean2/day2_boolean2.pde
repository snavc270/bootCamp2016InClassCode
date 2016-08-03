boolean b; 

void setup(){
  b = true; 
  
}

void draw(){
  b = !b; 
  if(b ==true){
    println("b is true"); 
  }else {
    println("b is false"); 
  }
}  