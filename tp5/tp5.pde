/*
Tecnología Multimedial 1, UNLP
Comsión 3, TP5
Valentin Calderon, Juani Altamirano, legajo 78575/8
Juego: Aventura grafica

*/
  //Musica
import processing.sound.*;
  SoundFile sf1;
  
  //animacion
 int maxImages = 3;
 int imageIndex = 0;
 
 PImage [] images = new PImage[maxImages];
 

PImage [] imagen = new PImage [14];
String pantalla;

Button resetbutton;

void setup() {
  
  //Imagenes por ciclo For, por numero de imagen, es decir imagen+1
  for (int i = 0; i < imagen.length; i++) {
    imagen[i] = loadImage("imagen"+i+".png");  
  }
  size(1280, 720);
   
   //BOTON
  resetbutton = new Button(1160,680,100,30,"Salir",0,200,200);
 
  for(int i = 0; i < images.length; i++) {
  images[i] = loadImage("frame_" + i + ".png");
  
  
  }

    //Musica
    sf1 = new SoundFile(this, "505.mp3");
    sf1.play();

  
  pantalla = "pantalla0";
  textSize(24);

  

}

void draw() {
  
  
  if(pantalla == "pantalla0"){ //Pantalla de INICIO
    image(imagen[0],0,0);

    fill(255);
    textSize(40);

    fill(0);
    textSize(20);
   
 
  
  //ANIMACION
  
  //PARA QUE VAYA MAS LENTO
  frameRate(20);

  //BOTON
  resetbutton.update();
  resetbutton.render();
     
  if(resetbutton.isClicked())
  {
  exit();
  }
  
 
  }else if(pantalla == "pantalla1"){
    image(imagen[1],0,0);
    push();
    fill(255);
    textSize(50);
    text("Apretar A para entrar",240,20);
     pop();
     
     //ANIMACION
     image(images[imageIndex], 20, width/4);
      imageIndex = (imageIndex+1) % images.length;
      
      push();
     text("Wow es un castillo enorme",240,500);
     text("Y esta es la unica puerta accesible",240,530);
      fill(0);
      pop();
 
  
  //BOTON
  
  
  }else if(pantalla == "pantalla2"){
    image(imagen[2],0,0);
  
    textSize(50);
    fill(255,255,255);
    text("Apretar A o B",150,20);
   
    //ANIMACION
    image(images[imageIndex], 600, -30);
     imageIndex = (imageIndex+1) % images.length;
     
      push();
      textSize(20);
      fill(0);
     text("Parece una sala de tortura...",840,170);
      
      pop();
     
  }else if(pantalla == "pantalla3"){
    image(imagen[3],0,0);
    textSize(50);
    text("Apretar R para volver al inicio",320,20);
    
    
    
  }else if(pantalla == "pantalla4"){
    image(imagen[4],0,0);
    
 //ANIMACION
    image(images[imageIndex], 100, 300);
     imageIndex = (imageIndex+1) % images.length;
     
      push();
      textSize(20);
      fill(0);
     text("Esto se esta poniendo cada vez mas raro",350,500);
     pop();
     
     }else if(pantalla == "pantalla5"){
    image(imagen[5],0,0);
    
     push();
     textSize(50);
    text("Apretar R para volver al inicio",320,20);
    pop();
     
  }else if(pantalla == "pantalla6"){
    image(imagen[6],0,0);
    
 //ANIMACION
    image(images[imageIndex], 600, -30);
     imageIndex = (imageIndex+1) % images.length;
     
      push();
      textSize(20);
      fill(0);
     text("Madre mia ahora si se viene lo bueno",840,170);
    pop();
    
     }else if(pantalla == "pantalla7"){
    image(imagen[7],0,0);
    
     push();
     textSize(50);
    text("Apretar R para volver al inicio",320,20);
    pop();
     
  }else if(pantalla == "pantalla8"){
    image(imagen[8],0,0);
    
 //ANIMACION
 image(images[imageIndex], 20, width/4);
      imageIndex = (imageIndex+1) % images.length;
     
     push();
      textSize(20);
      fill(0);
     text("¿Y ahora que?",240,500);
     pop();
     
  }else if(pantalla == "pantalla9"){
    image(imagen[9],0,0);
    
     push();
     textSize(50);
    text("Apretar R para volver al inicio",320,20);
    pop();
     
  }else if(pantalla == "pantalla10"){
    image(imagen[10],0,0);
    
     textSize(50);
    fill(255,255,255);
    text("Apretar A o B",150,20);
   
    //ANIMACION
    image(images[imageIndex], 600, -30);
     imageIndex = (imageIndex+1) % images.length;
     
      push();
      textSize(20);
      fill(0);
     text("No se si sobreviva a la caida,",840,170);
     text("pero el otro salto tambien parece brutal",840,200);
      
      pop();

   }else if(pantalla == "pantalla11"){
    image(imagen[11],0,0);
    
     push();
     textSize(50);
    text("Apretar R para volver al inicio",320,20);
    pop();
    
   }else if(pantalla == "pantalla12"){
    image(imagen[12],0,0);
    
     textSize(50);
    fill(0);
    text("Apretar A para que te salve messi (si o si)",500,20);
    
    }else if(pantalla == "pantalla13"){
    image(imagen[13],0,0);
    
     textSize(50);
    fill(0);
    text("Para empezar de nuevo apretar R",500,20);
  
  }
}
void keyPressed() {

    if (pantalla == "pantalla1" && keyCode == 'A') {
    pantalla = "pantalla2";
  } else if (pantalla == "pantalla2" && keyCode == 'A') {
    pantalla = "pantalla3";
 
  } else if (pantalla == "pantalla2" && keyCode == 'B') {
    pantalla = "pantalla4";
 
  } else if (pantalla == "pantalla3" && keyCode == 'R') { //INICIO
    pantalla = "pantalla0";
    
  } else if (pantalla == "pantalla4" && keyCode == 'B') { 
    pantalla = "pantalla5";
    
  } else if (pantalla == "pantalla5" && keyCode == 'R') { //INICIO
    pantalla = "pantalla0";
    
      } else if (pantalla == "pantalla4" && keyCode == 'A') { 
    pantalla = "pantalla6";
    
  } else if (pantalla == "pantalla6" && keyCode == 'B') { 
    pantalla = "pantalla7";
    
     }else if (pantalla == "pantalla7" && keyCode == 'R') { //INICIO
    pantalla = "pantalla0";
    
  } else if (pantalla == "pantalla6" && keyCode == 'A') { 
    pantalla = "pantalla8";
    
   } else if (pantalla == "pantalla8" && keyCode == 'B') { 
    pantalla = "pantalla9";
  
  } else if (pantalla == "pantalla9" && keyCode == 'R') { //INICIO
    pantalla = "pantalla0";
    
  } else if (pantalla == "pantalla8" && keyCode == 'A') { 
    pantalla = "pantalla10";
    
  } else if (pantalla == "pantalla10" && keyCode == 'A') { 
    pantalla = "pantalla11";
    
   } else if (pantalla == "pantalla11" && keyCode == 'R') { //INICIO
    pantalla = "pantalla0";
    
  } else if (pantalla == "pantalla10" && keyCode == 'B') { 
    pantalla = "pantalla12";
    
    } else if (pantalla == "pantalla12" && keyCode == 'A') { 
    pantalla = "pantalla13";
    
    } else if (pantalla == "pantalla13" && keyCode == 'R') { 
    pantalla = "pantalla0";
}
  }


void mousePressed(){
  //Botones del INICIO
  if(pantalla == "pantalla0"){ 

    if(mouseX>500 && mouseX<660 && mouseY>155 && mouseY<255){
    pantalla = "pantalla1";
    
   

  } 
 }

}
