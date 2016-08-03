boolean button = false; 
int x, y; 
int w = 200; 
int h = 80; 

void setup(){
  size(500, 500);  
 
   x = width/2; 
   y = height/2; 
}


void draw(){
 
  
  //rectMode(CENTER); 
  
  noStroke(); 
   
  if(mouseX > x-w/2 && mouseX < x +w/2 && mouseY > y- h/2 && mouseY < y +h/2 && mousePressed){
      button = true; 
  }else{
      button = false; 
  }
  
  if(button == true){
    background(255); 
    fill(255, 195, 154); 
    rect(x-w/2, y-h/2, w, h); 
  }else {
    background(22, 166, 185); 
    fill(50, 60, 255); 
    rect(x-w/2, y-h/2, w, h); 
  }
  
  
  
  fill(214, 88, 120, 100); 
  
  ellipse(width/2, height/2, 100, 150); 
  
}