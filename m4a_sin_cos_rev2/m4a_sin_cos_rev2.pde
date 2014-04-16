// By Jonathan Rothman and Jihyun Lee, developed at Processing Programming Workshop,
// 12/8/13, STEMteachersNYC.
int originX;
int originY;

void setup() {
  size(600, 600);
  setOrigin(50, height/2);
}

void setOrigin(int x, int y) {
  originX = x;
  originY = y;
}

void draw() {

  background(100);

  float x = 0;
  float y;

  stroke(0);
  strokeWeight(1);
  line(0, originY, width, originY);
  line(originX, 0, originX, height);

    pushMatrix();
    rotateY(PI);

  // i want to change amplitude based on my mouse Y position

  float a = cordinateYToScreen(mouseY);
  float b = map(mouseX-originX, 0, width, 0, 10);

  noFill();
  beginShape();
  stroke(0, 0, 0);
  strokeWeight(6);
  for (int i=0; i<360; i++) {
    y = a * sin(radians(b*i));
    vertex(originX+i, cordinateYToScreen(y));
  }
  endShape();

  beginShape();
  stroke(0, 255, 0);
  strokeWeight(4);
  for (int i=0; i<360; i++) {
    y = a * sin(radians(b*i));
    vertex(originX+i, cordinateYToScreen(y));
  }
  endShape();
  beginShape();
  stroke(0, 0, 0);
  strokeWeight(6);
  for (int i=0; i<360; i++) {
    y = a * cos(radians(b*i));
    vertex(originX+i, cordinateYToScreen(y));
  }
  endShape();
  beginShape();
  stroke(0, 0, 255);
  strokeWeight(4);
  for (int i=0; i<360; i++) {
    y = a * cos(radians(b*i));
    vertex(originX+i, cordinateYToScreen(y));
  }
  endShape();
    popMatrix();
  //  
  int textX = width-170;
  float angle = b*(mouseX-originX)%360;
  float sin_val = sin(radians(b*(mouseX-originX)));
  float cos_val = cos(radians(b*(mouseX-originX)));
  text("amplitude: "+a, textX, 100);
  text("angle(degree): "+angle, textX, 130);
  text("angle(radian): "+radians(angle), textX, 160);
  text("sin: "+sin_val, textX, 190);
  text("cos: "+cos_val, textX, 220);
}

float cordinateYToScreen(float screenY) {
  float mathY = originY - screenY;
  return mathY;
}

