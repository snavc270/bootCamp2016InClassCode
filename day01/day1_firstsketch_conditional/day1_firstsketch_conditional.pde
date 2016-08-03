int shadeR; 
int shadeG; 
int shadeB;

void setup(){
  size(500, 500); 
  background(0); 
}

void draw(){
  shadeR = (int)random(255); 
  shadeG = (int)random(255); 
  shadeB = (int)random(255); 
  //(r, g, b); 
  if(frameCount % 120 ==0){
    background(shadeR, shadeG, shadeB); 
    println("hey"); 
  }
  
  //println(frameCount); 
}