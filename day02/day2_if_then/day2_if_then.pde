int w; 
int h; 
int r; 
int g; 
int b; 

void setup(){
  size (600, 600); 
  w = width/2; 
  h = height/2; 
}

void draw(){
  background(255); 
  
  stroke(0); 
  r = (int)random(255); 
  g = (int)random(255); 
  b = (int)random(255); 
  
  fill(0, 255, 255); 
  stroke(255, 102, 0);
  line(85, 20, 10, 10);
  line(90, 90, 15, 80);
  stroke(0, 0, 0);
  bezier(85, 20, 10, 10, 90, 90, 15, 80);
  
  line(width/2, 0, width/2, height); 
  line(0, height/2, width, height/2); 
  
  noStroke(); 
  fill(0); 
  
  if(mouseX < w && mouseY <h){
    fill(r,g,b); 
    rect(0, 0, w, h); 
  }else if(mouseX >w  && mouseY <h){
    rect(width/2, 0, w, h); 
  }else if (mouseX <w && mouseY >h){
    rect(0, height/2, w, h); 
  }else if( mouseX > w && mouseY >h){
    rect(w, h, w, h); 
  }
}