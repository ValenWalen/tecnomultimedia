void setup(){
size(400,400);
background(255,211,211);
}
void draw(){
  noStroke();
  fill(255);
  ellipse(125,150,80,80);
  ellipse(275,150,80,80);
  fill(0, 150, 0);
  ellipse(275,150,40,40);
  ellipse(125,150,40,40);
  fill(200);
  ellipse(180,225,20,20);
  ellipse(220,225,20,20); 
  fill(0);
  ellipse(275,150,30,30);
  ellipse(125,150,30,30);
  fill(255);
  rect(100,250,200,40,800);
    fill(0);
    rect(100,270,200,2,800);
  stroke(200,200,200);
  noFill();
  curve(200, 500, 180, 220, 220, 220, 180,400);
  noStroke();
     fill(245,161,161);
  rect(170,125,60,80,800);
}
