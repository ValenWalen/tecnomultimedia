  /* Calderón Valentín (comision 3)
  tp1 - Titulo y creditos de la pelicula Scott Pilgrim vs. The World
  
  
  referencias usadas: https://www.youtube.com/watch?v=5-jSZQEc674&ab_channel=ChristopherHorenstein
                      https://www.youtube.com/watch?v=I81_dntQy4Q&ab_channel=smol%E3%82%A8%E3%83%9E
                        
                        
                        */
                       
  //variables de imagenes y texto
  PImage scottPilgrim1, scottPilgrim2, scottPilgrim3, scottPilgrim4, scottPilgrim5, scottPilgrim6;
  PFont fuente1; //fighter.otf
  PFont fuente2;   //font2.vlw
  PFont fuente3;   //font2.vlw mas grande
  
  //variables de movimiento
  
  int mov1;
  

 void setup(){
   //frameRate(20);
   
   size (400, 400);
    //size (800, 600);
         
  //cargar imagenes y fuentes
  scottPilgrim1 = loadImage("scottPilgrim1.png");
  scottPilgrim2 = loadImage("scottPilgrim2.png");
  scottPilgrim3 = loadImage("scottPilgrim3.png");
  scottPilgrim4 = loadImage("scottPilgrim4.png");
  scottPilgrim5 = loadImage("scottPilgrim5.png");
  scottPilgrim6 = loadImage("scottPilgrim6.png");
  
  fuente1 = createFont("fighter.otf", 50);
  fuente2 = createFont("font2.vlw", 8);
  fuente3 = createFont("font2.vlw", 10);

  //movimiento
   
  mov1 = 1;
  

}

void draw(){
  background(0);
  
  println(frameCount);
  
  //Titulo
  
  //image (scottPilgrim1, random(-100, -97),random(35, 32), random(1152, 1172)/2, random(648, 668)/2);
  
  image (scottPilgrim1, random(-70, -67),random(50, 47), random(1056, 1076)/2, random(594, 604)/2);
  
  
  if (frameCount> 200) {
     background(0);   
  image (scottPilgrim2, random(-70, -67),random(50, 47), random(1056, 1076)/2, random(594, 604)/2);
    }    
    
     if (frameCount> 400) {
     background(0);  
  image (scottPilgrim3, random(-70, -67),random(50, 47), random(1056, 1076)/2, random(594, 604)/2);

    }    
    
    if (frameCount> 500) {
     background(0);  
  image (scottPilgrim4, random(-70, -67),random(50, 47), random(1056, 1076)/2, random(594, 604)/2);

    }   
    
      if (frameCount> 600) {
      background(0);  
  image (scottPilgrim5, random(-70, -67),random(50, 47), random(1056, 1076)/2, random(594, 604)/2);

    }   
    
    //Continue?
    
     if (frameCount> 700) {
       
  background(0);  
  image (scottPilgrim6, -70, 50, 1056/2, 594/2);
  
  fill(242,random(120),random(100));
  textFont(fuente1);
  textAlign(CENTER);
  text ("Continue?", 200, 200);  
    text ("4", 200, 250);
 
        }
    
        if (frameCount> 720) {
  image (scottPilgrim6, -70, 50, 1056/2, 594/2);
  text ("Continue?", 200, 200);  
  textFont(fuente1);
  textAlign(CENTER);
  text ("3", 200, 250);
    }
    
        if (frameCount> 740) {
  image (scottPilgrim6, -70, 50, 1056/2, 594/2);
  text ("Continue?", 200, 200);  
  textFont(fuente1);
  textAlign(CENTER);
  text ("2", 200, 250);
    }
    
        if (frameCount> 760) {
  image (scottPilgrim6, -70, 50, 1056/2, 594/2);
  text ("Continue?", 200, 200);  
  textFont(fuente1);
  textAlign(CENTER);
  text ("1", 200, 250);
  
      
    }
    
    //Creditos finales
    
    if (frameCount> 780) {
      background(0);
      mov1 = frameCount;
      //println(mov1);
      
  background(0);
  fill(255);
  textFont(fuente2);
  
  
  // text ("MUSIC EDITOR/ADDITIONAL COMPOSITION", 180, 4050-mov1*4);
    text ("MUSIC EDITOR/ADDITIONAL COMPOSITION", 120, 3600-mov1*4);  
  
   text ("SECOND ASSISTANT DIRECTOR", 120, 3700-mov1*4);
   text ("FIRST ASSISTANT DIRECTOR", 120, 3715-mov1*4);  
 
  text ("UNIT PRODUCTION MANAGERS", 120, 3815-mov1*4);  
  textFont(fuente3);
  textAlign(CENTER);
  
  
  text ("STEVE PRICE", 290, 3600-mov1*4);  
  text ("JACK BOEM", 290, 3700-mov1*4);
  text ("WALTER GASPAROVIC", 290, 3715-mov1*4);  
  text ("J.MILES DALE DENNIS CHAPMAN", 290, 3815-mov1*4);  
    }
     //reinicio automatico
 /* if (frameCount> 878) {
    background (0);
    frameCount= 0;   
  }  */

  }
    //reiniciar haciendo click
    void mousePressed () {
  if (frameCount> 880) {
    background (0);
    frameCount= 0;
    }
  }
