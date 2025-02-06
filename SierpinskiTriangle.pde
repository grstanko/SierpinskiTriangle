void setup() {
  size(500, 500,P3D);
}

void draw() {
  background(51);
  camera(radius * sin(theta) * cos(phi), radius * sin(theta) * sin(phi), radius * cos(theta), 0, 0, 0, 0.0, 1.0, 0.0);
  menger(depth, 150);
}

int depth = 1;
float phi = 0;
float theta = 0;
float radius = 300;

void menger(int depth, float length) {
  if (depth == 1) {
    box(length);
  } else {
    pushMatrix();
    translate(length/3, 0, 0);
    menger(depth -1, length/3);
    translate(length/3, 0, 0);
    menger(depth-1, length/3);
    translate(length/3, 0, 0);
    menger(depth-1, length/3);
    translate(0, length/3, 0);
    menger(depth-1, length/3);
    translate(0, length/3, 0);
    menger(depth-1, length/3);
    translate(-length/3, 0, 0);
    menger(depth -1, length/3);
    translate(-length/3, 0, 0);
    menger(depth -1, length/3);
    translate(0, -length/3, 0);
    menger(depth-1, length/3);
    translate(0, -length/3, length/3);
    menger(depth-1, length/3);
    translate(length/3*2, 0, 0);
    menger(depth-1, length/3);
    translate(0, length/3*2, 0);
    menger(depth-1, length/3);
    translate(-length/3*2, 0, 0);
    menger(depth-1, length/3);
    translate(length/3*2, 0, length/3);
    menger(depth-1, length/3);
    translate(0, -length/3, 0);
    menger(depth-1, length/3);
    translate(0, -length/3, 0);
    menger(depth-1, length/3);
    translate(-length/3, 0, 0);
    menger(depth-1, length/3);
    translate(0, length/3, 0);
    //menger(depth-1, length/3);
    translate(0, length/3, 0);
    menger(depth-1, length/3);
    translate(-length/3, 0, 0);
    menger(depth-1, length/3);
    translate(0, -length/3, 0);
    menger(depth-1, length/3);
    translate(0, -length/3, 0);
    menger(depth-1, length/3);
    popMatrix();
  }
}

void keyPressed() {
  switch (key) {
    case 'w':
      phi-=0.1;
      break;
     case 's':
       phi+=0.1;
       break;
      case 'q':
        theta-=0.1;
        break;
       case 'e':
         theta+=0.1;
         break;
       case '-':
       depth--;
         break;
       case '=':depth++;
         break;
 
  }
}
