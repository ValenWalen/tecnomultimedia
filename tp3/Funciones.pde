//Funciones de colision

boolean col1fruta( float x_, float y_, float r_, float x1_, float y1_ ) {
  
  float distancia = dist( x_, y_, x1_, y1_);
  
    return distancia<=r_;
}
