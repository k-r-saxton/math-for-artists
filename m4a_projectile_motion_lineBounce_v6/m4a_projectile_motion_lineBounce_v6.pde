// based on projectile motion code by F.Jackson, E.Riley, and K.Patel (stem) 12/8/13

int r;
int g;
int b;
float x = 0; //  sets up initial horizontal position
float y = 100; // sets up initial vertical position
float xspeed = 1.5; // Initial horizontal speed (constant)
float yspeed = -5; // Initial vertical speed
float yacceleration = .5; // Vertical acceleration (constant, down)
int x2 = 0;
int y2 = 300;

void setup() {
  size(1100,300);
  background(255);
  //frameRate(5);
}

void draw() { 
  r = int(random(100, 250));
  g = int(random(200, 250));
  b = int(random(200, 250));
  
  
    //ellipseMode(CENTER); // Position of ball measured from center
   //fill(r, g, b); // Inside of ball is black
  //ellipse(x, y, 20, 20); // Draws ball with center at {x,y}
 //  line(x2, y2, x, y);
  stroke(r, g, b);
  strokeWeight(1);
  float futureYspeed = yspeed + yacceleration;
  //line(x2, y2, x, y);
  line(x, y, x*xspeed, futureYspeed);
  //line(x, y, (x + xspeed), (y + futureYspeed));
  x = x + xspeed; // Horizontal position of ball increases by constant amount each time window is redrawn
  y = y + yspeed; // Vertical position of ball increases each time window is redrawn
  yspeed = yspeed + yacceleration; // Size of increment of vertical position increases at each redrawing

/* If ball hits bottom of window, reverse direction of 
vertical speed so ball bounces up with 95% of previous speed (damping).*/
  if (y > height) {  
    yspeed = yspeed * -0.95;
  }  //end of "if" function

/* If ball hits either side of window, reverse direction of 
horizontal speed so ball bounces back with 100% of previous speed.*/
  if (x > width || x < 0) {
    xspeed = xspeed * -1;
   }  // End of "if" function
   
/*   
   y2++;
   x2++;
 */  
   
  // if ( y >= 400 && x > 5) {
    // noLoop();
   //}
} // End of commands run by "draw" function
