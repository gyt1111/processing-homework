PImage img;
int x, y, i;

void setup() {
  size(1080, 1440);
  background(255);
  noStroke();
  img = loadImage("hh.jpg");
  frameRate=1;
}
  
void draw() {
  for(i=0;i<100;i++){
  x = round(random(width));
  y = round(random(height));
  color c = img.get(x, y);
  fill(c, 70);
  ellipse(x, y, i+10, i+10);
  frameRate=1;
  }
}
