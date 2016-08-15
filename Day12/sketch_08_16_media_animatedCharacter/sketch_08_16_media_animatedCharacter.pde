//MFADT Bootcamp 2016
//08.16.2016
//Media
//Animated Character

int imageIndex=0;
float xPosition;
boolean faceLeft=true;

//Delare two arrays of PImage respectively
//Face left
PImage[] images1=new PImage[10];
//Face Right
PImage[] images2=new PImage[10];

void setup(){
  size(1000,350);
  
  //Use for loop to load array of Images
  for ( int i = 0; i< 10; i++ ){
  images1[i]=loadImage(i+".png");
  images2[i]=loadImage("f"+i+".png");
 }
 
 //speed
 frameRate(10);
}

void draw(){
  background(255);
  
  //Check running direction and load different array of images
  if(faceLeft==true){
  image(images1[imageIndex],width/2+xPosition,0);
  imageIndex=(imageIndex+1)% 10;
}
  if(faceLeft==false){ 
  image(images2[imageIndex],width/2+xPosition,0);
  imageIndex=(imageIndex+1)% 10;
  }
}

//Keyboard control
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      faceLeft=true;
      xPosition-=30;
    }else if(keyCode == RIGHT){
      faceLeft=false;
      xPosition+=30;
    }
    println(faceLeft);
  }
}