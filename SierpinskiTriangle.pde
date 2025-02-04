void setup() {
  size(1000, 866);
  gdepth = 1;
  noStroke();
  ellipseMode(CORNER);
}

void draw() {
  background(51);
  serpinski(gdepth, 0, 0, width, height);
}

int count;
int dcount;
int gdepth;

void serpinski(int depth, float x, float y, float width, float height) {
  if (depth <= 1) {
    triangle(x, y, x+width/2, y+height, x+width, y);
  } else {
    serpinski(depth-1, x, y, width/2, height/2);
    serpinski(depth-1, x+width/2, y, width/2, height/2);
    serpinski(depth-1, x+width/4, y+height/2, width/2, height/2);
  }
}

void sl() {
  while(true) {
    if (keyPressed == true) {
      return;
    }}
}

void keyPressed() {
  if (key == '=') {
    gdepth++;
  } else if (key == '-') {
    gdepth--;
  }
}
