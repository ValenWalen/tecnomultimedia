//===============================================================================            // Calderón Valentín (Comision N°3)

  // -Variables                                                                              // Estado del trabajo: incompleto
  
 
  String[] texto = {
    
    "Manzana",
    "Banana",
    "Naranja",
  
  };
  //imagenes
  PImage manzana;
  PImage banana;
  PImage naranja;
  PImage fondo;
  PImage tutorial;
  PImage ganaste;
  PImage perdiste;
  
  float azar;
  int actual=0;

  int pantalla=0;
  //int mov1 =1;
  //int mov2 =1;

//===============================================================================
  
  void setup(){
    
    size(500,500);
    
    //carga de imagenes
    fondo = loadImage("fondo.png");
    manzana = loadImage("manzana.png");
    naranja = loadImage("naranja.png");
    banana = loadImage("banana.png");
    tutorial = loadImage("tutorial.png");
    ganaste = loadImage("ganaste.png");
    perdiste = loadImage("perdiste.png");
  
    azar = int(random(3)); /* al arrancar el programa carga un número aleatorio */
  
  }
  
  
//===============================================================================

  void draw(){
  
    //dibujar la pantalla del estado que corresponda
    
    if( pantalla==0 ){  //pregunta si pantalla es igual a 0
     
      text( texto[actual], width/2, height/2);
        if (pantalla==0){
          
     
        
        }
          
      //pantalla de inicio:
      //background(100);
      image(tutorial, 0, 0, 500,500);

    
      } else if (pantalla==1 ){
       //pantalla juego:  
     
      
      image(fondo,0, 0, 500,500);
      image(naranja, random(0,2),150, 150,150);
      image(manzana, random(height/3,168),150,150,150);
      image(banana, random(height-150, 352),150,150,150);
     
     textSize(30);
     text("Fruta: "+texto[int(azar)], 150, 450); // int lo transforma en entero
     println(azar);
     fill(0);
     
   
     
      } else if (pantalla==2 ){
        
 
      //pantalla gano:  
    
      background(0,255,0);
    
      } else if (pantalla==3 ){
      //pantalla perdio:  
    
      background(255,0,0);
    
     }
  
  }
      
//===============================================================================

  void mousePressed(){
    
    if( pantalla==0 ){  //pregunta si pantalla es igual a 0
      
      //pantalla de inicio:
       
       pantalla=1;
     
      } else if (pantalla==1 ){
        
        
 
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
