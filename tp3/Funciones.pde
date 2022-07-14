//Funciones de colision

boolean col1fruta( float x_, float y_, float r_, float x1_, float y1_ ) {
  
  float distancia = dist( x_, y_, x1_, y1_);
  
    return distancia<=r_;
}

void cargarImagenes(){

  fondo = loadImage("fondo.png");
    manzana = loadImage("manzana.png");
    naranja = loadImage("naranja.png");
    banana = loadImage("banana.png");
    tutorial = loadImage("tutorial.png");
    ganaste = loadImage("ganaste.png");
    perdiste = loadImage("perdiste.png");
  
}

void pantallaJuego(){


    image(fondo,0, 0, 500,500);
    push();
    
    imageMode(CENTER);
    image(naranja,75 ,225, 150,150);
    image(manzana, 245,225,150,150);
    image(banana, 425,225,150,150);
    
    pop();
    


}
