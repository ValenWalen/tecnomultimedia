
/* Calderón Valentín (comision 3)
  tp2 - CONSIGNA: crear una ilusión óptica
  
  link de youtube: https://www.youtube.com/watch?v=M9F0HddgmXE&ab_channel=ValentinCalderon
  
                        
                        */


int posY = 1;

void setup(){
  //frameRate(1);
  size(400,400);


}

void draw(){
background(0);
  noStroke();

/*
    rect(0,0,400,50);
    rect(0,100,400,50);
    rect(0,200,400,50);
    rect(0,300,400,50);
    */
    
    for (int i=0; i<800; i+=50){
     
  
      
    rect(0, i-mouseY, 200, 25);
        }
       
        for (int i=-800; i<800; i+=50){
          
    rect(200, i+mouseY, 200, 25);
    
    
        }  
        
        if ( keyPressed ){
         if (key == 'x' ){
         fill(200,random(100,200),random(90,200));
         
         
         }
         
    
          
        }
        
}
       
                  
          void mousePressed () {
        fill(255);
        }
        
