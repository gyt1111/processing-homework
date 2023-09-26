int num= 20;
float round, c, offset, theta, angle;

void setup(){
  size(600,600);
  strokeWeight(5);
  round= 22;
}

void draw(){
  background(20);
  translate(width/2,height*0.75);
  rotate(PI);
  angle= 0;
  for (int i= 0; i<num; i++) {
    stroke(255);
    noFill();
    c = i*round;
    float offset = TWO_PI/num*i;
    float arcEnd = map(sin(theta+offset),-1.5,-2.8,PI,TWO_PI);
    arc(1,189,c,c,arcEnd,PI);
  }
  colorMode(RGB);
  resetMatrix();
  theta += 0.523;
saveFrame();}
