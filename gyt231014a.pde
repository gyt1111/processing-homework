PImage img;
int x, y, i;
float j;

void setup() {
  img = loadImage("zjl.jpg");
  size(1279,1068);
  background(255);
  noStroke();
  img = loadImage("zjl.jpg");
}
void draw() {
  frameRate(5);
  for(i=0;i<1000;i++){
  x = round(random(width));
  y = round(random(height));
  color c = img.get(x, y);
  j=noise(10,50)*50;
  stroke(c);
  strokeWeight(2);
  noFill();
  line(x+j,y-j,x-j,y+j);
    }
  }
