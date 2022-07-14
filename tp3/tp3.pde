
// Calderón Valentín (Comision N°3)
//Video: https://www.youtube.com/watch?v=CRsQVmbDLC8&ab_channel=ValentinCalderon
  
  // -Variables                        
  
  import processing.sound.*;
  SoundFile sf, sf2;
  
  String[] texto = {
    
    "Naranja",
    "Manzana",
    "Banana",
  
  };
  //imagenes
  PImage manzana, banana, naranja, fondo, tutorial, ganaste, perdiste;
  
  int azar;
  int actual=0;

  int pantalla=0;
 
//==========================================================================
  
  void setup(){
    

    size(500,500);
    
    
    sf = new SoundFile(this, "win.mp3");
    sf2 = new SoundFile(this, "lose.mp3");
    
    //song.play();
    //carga de imagenes
    cargarImagenes();
    
    //azar = int(random(3)); /* al arrancar el programa carga un número aleatorio (pero no cambia) */
  
  }
  
  
//==========================================================================

  void draw(){
  
    //dibujar la pantalla del estado que corresponda
    
    if( pantalla==0 ){  //pregunta si pantalla es igual a 0
     
      text( texto[actual], width/2, height/2);
       
      azar = int(random(3)); /* al arrancar el programa carga un número 
      aleatorio, cambie de lugar esto, porque si estaba en el setup, no volvia a cambiar el valor */ 
      //pantalla de inicio:
      //background(100);
      image(tutorial, 0, 0, 500,500);

    
      } else if (pantalla==1 ){
       //pantalla juego:  
     
      pantallaJuego();
      if (col1fruta(75 ,225,75, mouseX, mouseY )){
         //efecto vibracion
        image(fondo,0, 0, 500,500);
       push();
    
        imageMode(CENTER);    
        image(naranja,random(75,80) ,225+5, 150+5,150+5);
        image(manzana, 245,225,150,150);
        image(banana, 425,225,150,150);
      pop(); 
      
      
      }
      
      if ( col1fruta( 245, 225, 75, mouseX, mouseY)) {
       image(fondo,0, 0, 500,500);
       push();
    
        imageMode(CENTER);
        image(naranja,75 ,225, 150,150);
        image(manzana, random(245,250),225+5,150+5,150+5);
        image(banana, 425,225,150,150);
      pop(); 
            
      }
      
        if ( col1fruta(  425, 225, 75, mouseX, mouseY)) {
       image(fondo,0, 0, 500,500);
       push();
    
        imageMode(CENTER);
        image(naranja,75 ,225, 150,150);
        image(manzana, 245,225,150,150);
        image(banana, random(425,430),225+5,150+5,150+5);
      pop(); 
      }
      
     textSize(30);
     text("Fruta: "+texto[azar], 150, 450);
     println(azar);
     fill(0);
     
   
     
      } else if (pantalla==2 ){
        
 
      //pantalla gano:  
      
      image(ganaste,0, 0, 500,500);
       
      //background(0,255,0);
    
      } else if (pantalla==3 ){
      //pantalla perdio:  
       
      image(perdiste,0, 0, 500,500);
      
      //background(255,0,0);
    
     }
  
  }
      
//===============================================================================

  void mousePressed(){
    
    if( pantalla==0 ){  //pregunta si pantalla es igual a 0
      
      //pantalla de inicio:
       
       pantalla=1;
     
      } else if (pantalla==1 ){
        //preguntar si hay colision correcta
        int tempCualfruta = -1;
    
    if (col1fruta(75 ,225,75, mouseX, mouseY )){
        
        tempCualfruta = 0;
        }
        
    if ( col1fruta( 245, 225, 75, mouseX, mouseY)) {
      tempCualfruta = 1;
    }
    if ( col1fruta(  425, 225, 75, mouseX, mouseY)) {
      tempCualfruta = 2;
    }
    if ( tempCualfruta>=0 ) {
      if ( tempCualfruta==azar) {
        //gane
        pantalla=2;
        if(!sf.isPlaying()){
          sf.jump(0.3);
       sf.play();
       }
      } else {
        //perdi
        pantalla=3;
         if(!sf2.isPlaying()){
            sf2.jump(0.3);
       sf2.play();
        }
      }
    }
        
 
      } else if (pantalla==2 ){
      //pantalla gano:  
      volverAPantallaInicio();
      
      } else if (pantalla==3 ){
      //pantalla perdio:  
       volverAPantallaInicio();
      
    
      //pantalla=1;
  
      
  
      }
  
  }
  
  void  volverAPantallaInicio(){
    pantalla=0;
  }
