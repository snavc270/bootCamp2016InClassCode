int[][] grid; 
int cellsize = 10; 

void setup(){
  size(640,480); 
  grid = new int[width/cellsize][height/cellsize];
  noiseSeed(0); 
}

void draw(){
    background(0); 
    noiseDetail(4, 0.7); 
    float increment= 0.08;
   
    float xoff= 0.0; 
    
    for(int x = 0; x< width/cellsize; x++){
      xoff += increment; 
      float yoff = 0.0; 
    for(int y=0; y< height/cellsize; y++){
        yoff += increment; 
//        float brightness = noise(xoff, yoff)* 255; 
        
        
//      float brightness = noise(xoff + mouseX * 0.01, yoff + mouseY * 0.01) * 255;
      
      //to get some animation by moving through our noise map in a THIRD dimension, try uncommenting the following:
      float brightness = noise(xoff, yoff, frameCount * 0.005) * 255;
     grid[x][y]= floor(brightness); 
    }
  } 
  
  for(int i = 0; i <height/cellsize; i++){
    for(int j = 0; j<width/cellsize; j++){
      fill(grid[j][i]); 
      rect(j*cellsize, i*cellsize, cellsize, cellsize); 
    }
  }
}
