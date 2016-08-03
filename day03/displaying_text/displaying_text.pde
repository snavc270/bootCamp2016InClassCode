//https://processing.org/tutorials/text/
//go to processing tutorials 

PFont f; 

void setup(){
    size(500, 500); 
    f = createFont("Arial", 16, true); 
}

void draw(){
    background(255); 
    textAlign(CENTER); 
    textFont(f, 16); 
    fill(0); 
    text("Hey there!", width/2, height/2); 
}