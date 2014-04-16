//this is the new rotatePushPop job...

float a;                 // Angle of rotation
float offset = PI/24;  // Angle offset between boxes
int num = 10;            // Number of boxes

void setup() { 
  size(400, 400, P3D);
  noStroke();  
} 
 

void draw() {
  
  lights();
  
  background(0, 0, 26);
  translate(width/2, height/2); 
  
 for(int i = 0; i < num; i++) {
    float gray = map(i, 0, num-1, 0, 255);
   pushMatrix();  //organizes the rotation, if you take it away
                  //with the pop, all cubes rotate crazay.
    fill(gray);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    box(100);  //sets size of box
   popMatrix();
  }
  
  a += 0.01;    
} 

