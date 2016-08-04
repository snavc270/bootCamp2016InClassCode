float yPos; 
float vel; //speed of drop
float size; //size of circle


void setup(){
  size (600, 600); 
  background(0); 
  
  yPos = 0; 
  vel = 5; 
  
}

void draw(){
    fill(0, 10); 
    rect(0, 0, width, height); 
    
    moveDrop(); 
    size = random(50); 
    for(int i = 0; i<50; i++){
     makeDrop(i*20, size); 
    }
    
}

void moveDrop(){
  yPos += vel; 
  
  if(yPos< 0 || yPos > height){
    vel *= -1; 
  }
}
void makeDrop(float xPos, float size){
    int r = (int) xPos; 
    int g = (int) yPos; 
    
    if(r>255){
      r = 100; 
    }
    
    if(g> 255){
      g = 100;  
    }
    noStroke(); 
    fill(r, g, 227); 
    ellipse(xPos, yPos, size, size); 
}  

float calculateSize(float x1, float y1){
    float s = x1+y1; 
    return s; 
}