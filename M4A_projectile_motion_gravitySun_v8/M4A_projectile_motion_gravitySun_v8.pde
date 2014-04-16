// Based on code by F.Jackson, E.Riley, and K.Patel 12/8/13

int r;
int g;
int b;
float x = 0; // initial horizontal position
float y = 400; // initial vertical position
float xspeed = 1.5; // initial horizontal speed (constant)
float yspeed = -5; // initial vertical speed
float yacceleration = 0.04; // Vertical acceleration (constant, down)
int x2 = 0;
int y2 = 400;

// Setup size of window
void setup() {
  size(400,400);
  //background(255); // White background
  //frameRate(5);
}

// Draw function which repeatedly redraws window by running commands below it
void draw() { 
  background(255);  
  r = 240;
  g = 2;
  b = int(random(0, 100)); //flicker a bit blueish
    
  ellipseMode(CENTER); // position of ball measured from center
  fill(r, g, b); // inside of ball changes color
  ellipse(x, y, 100, 100); // draws ball with center
  //line(x2, y2, x, y); if you want to see the angle from ball starting position
  stroke(r, g, b);
  strokeWeight(3);
  float futureYspeed = yspeed + yacceleration;
  line(x, y, (x + xspeed), (y + futureYspeed));
  x = x + xspeed; // horizontal position of ball increases by constant amount each time window is redrawn
  y = y + yspeed; // Vertical position of ball increases each time window is redrawn
  yspeed = yspeed + yacceleration; // Size of increment of vertical position increases at each redrawing

  if (y > height) {  
    yspeed = yspeed * -1; // set at slightly less than 1, (-0.95), to create damping.
  }  //end of "if" function

// If ball hits either side of window, reverse direction of 
//horizontal speed so ball bounces back with 100% of previous speed.*/
  if (x > width || x < 0) {
    xspeed = xspeed * -1;
   } 
   
   y2++;
   x2++;

   }

