PShape [] characters;
int vertexCount;
float sinCounter = 0;
float eSize = 15;

void setup () {
  size (1200, 900);
  smooth ();
  background (0);
  noStroke ();

  PShape drawingSVG = loadShape("visual.svg");
  drawingSVG.disableStyle();
  int count = drawingSVG.getChildCount();  
  characters = new PShape [count];

  for (int i = 0; i < characters.length; i ++) {
    characters[i] = drawingSVG.getChild(i);
    int v = characters[i].getVertexCount();
    println(v);
  }
}

void draw () {
  background (255,210,100);
  for (int j = 0; j < 6; j++) {
    vertexCount = characters[j]. getVertexCount ();

    for (int i = 0; i < vertexCount; i+=1) {
      PVector v = characters[j]. getVertex(i).mult(2);
      float Color = map(cos(sinCounter), -1, 1, 255, 0);
      fill(Color,120,90,20);
      float Size = map(i, 0, vertexCount, eSize, eSize);
      rect(v.x, v.y - height/2, Size, Size);

      float aa = TWO_PI/vertexCount;
      sinCounter += aa;
    }
  }
  filter(BLUR , 1);
}
