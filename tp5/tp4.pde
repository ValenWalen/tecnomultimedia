/*
Tecnología Multimedial 1, UNLP
Comsión 3, TP5
Valentin Calderon, Juani Altamirano, legajo 78575/8
Juego: Aventura grafica

*/

PImage [] imagen = new PImage [5];
String pantalla;
String str="Castillo";
int x1, y1=500;

void setup() {
  x1 = width/3;
  //Carga de imágenes con for, cuando su nombre es imagen(numero) y con extensión png 
  for (int i = 0; i < imagen.length; i++) {
    imagen[i] = loadImage("imagen"+i+".png");  
  }
  size(1280, 720);
  pantalla = "pantalla0";
  textSize(24);

  frameRate(130);//velocidad cred
}

void draw() {
  

  if(pantalla == "pantalla0"){ //Pantalla de INICIO
    image(imagen[0],0,0);
    //boton(40,355);
    //boton(500,155);
    //boton(345,355); 
    fill(255);
    textSize(40);
    //text("El Castillo Maldito",190,80);
    fill(0);
    textSize(20);
    //text("INICIO",116,425);
    //text("CRÉDITOS",410,425);
    
  }else if(pantalla == "pantalla1"){
    image(imagen[1],0,0);
    //fill(255);
    //rect(0,353,600,500);
    //fill(0);
    //text("Gerda y Kai eran mejores amigos.Un día, ambos fueron a la\ncasa de la abuela de Gerda, les contó una historia de una\npoderosa bruja, la reina de las nieves.",5,380);
    //fill(#82c6c6);
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
  //if (pantalla == "pantalla1" && keyCode == ' ') {
    //pantalla = "pantalla2";
    if (pantalla == "pantalla1" && keyCode == 'A') {
    pantalla = "pantalla2";
  } else if (pantalla == "pantalla2" && keyCode == 'A') {
    pantalla = "pantalla3";
 
  } else if (pantalla == "pantalla2" && keyCode == 'B') {
    pantalla = "pantalla4";
 
  } else if (pantalla == "pantalla3" && keyCode == 'R') { //INICIO
    pantalla = "pantalla0";
  }
  println(pantalla);
 
}

void mousePressed(){
  //Botones del INICIO
  if(pantalla == "pantalla0"){ 
   //if(mouseX>40 && mouseX<260 && mouseY>355 && mouseY<475){
    //pantalla = "pantalla1";
    if(mouseX>500 && mouseX<660 && mouseY>155 && mouseY<255){
    pantalla = "pantalla1";
  //}else if(mouseX>345 && mouseX<565 && mouseY>355 && mouseY<475){
   // pantalla = "pantalla20";
  } 
 }
  //Botón de  los CRÉDITOS
  //if(pantalla == "pantalla20"){
  //  if(mouseX>40 && mouseX<110 && mouseY>420 && mouseY<480){
  //   pantalla = "pantalla0";
  //   y1= 520;
  //  }
 // }
}

void boton(int x, int y) {
  fill(#8ee5ea);
  //rect(x, y, 220, 120);
}
