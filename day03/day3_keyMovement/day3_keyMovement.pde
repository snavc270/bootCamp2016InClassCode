int value = 0; 
int x =0; 
int y = 0; 

void setup(){
  size(500, 500); 
}

void draw(){
   background(0); 
  if(keyPressed ==true){
    if(key == 'b'){
       fill(0); 
    }
  }else{
   fill(255); 
  }
  //fill(value); 
  rect(width/2 + x, height/2 +y, 100, 100); 
 
}

//void keyPressed(){
//  if(value ==0){
//    value = 255; 
//  }else {
//    value = 0; 
//  }
//}
//coding our arrow keys
void keyPressed(){
  if (key ==CODED){
    if(keyCode ==UP){
       y -= 10; 
    }else if (keyCode == DOWN){
      y+= 10; 
    }else if(keyCode ==RIGHT){
       x += 10; 
    }else if (keyCode == LEFT){
      x -= 10; 
    }
  }
}