int brushSize; 
void setup(){
  size(500, 500); 
  background(255); 
  noFill(); 
  brushSize= 10; 
}

void draw(){
    if(mousePressed){
      fill(0,255, 100); 
      noStroke(); 
      ellipse(mouseX, mouseY, brushSize, brushSize); 
    }
}