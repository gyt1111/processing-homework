void setup(){
  size(800,800);
  background(255);
  frameRate(10);
}

void draw(){
  float a=random(0,200),b=random(0,200);
  fill( random(0,255), random(0,255), random(0,255),random(0,255));
  strokeWeight(5);
  rect(mouseX,mouseY,a,b);
}
  
  
