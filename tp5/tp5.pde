/*
Tecnología Multimedial 1, UNLP
Comsión 3, TP5
Valentin Calderon, Juani Altamirano, legajo 78575/8
Juego: Aventura grafica

*/

PImage [] imagen = new PImage [5];
String pantalla;

void setup() {
  
  //Imagenes por ciclo For, por numero de imagen, es decir imagen+1
  for (int i = 0; i < imagen.length; i++) {
    imagen[i] = loadImage("imagen"+i+".png");  
  }
  size(1280, 720);
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

  }else if(pantalla == "pantalla1"){
    image(imagen[1],0,0);

    fill(255,255,255);
    text("Apretar A o B",20,20);
  }else if(pantalla == "pantalla2"){
    image(imagen[2],0,0);
  
 
    fill(255,255,255);
    text("Apretar A o B",20,20);
  }else if(pantalla == "pantalla3"){
    image(imagen[3],0,0);
    text("Apretar R para volver al inicio",20,20);
  }else if(pantalla == "pantalla4"){
    image(imagen[4],0,0);
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
