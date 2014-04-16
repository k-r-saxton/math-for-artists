// Super basic projectile motion based on code by F. Jackson, E. Riley, and K. Patel (STEM) 12/8/13 


int r;
int g;
int b;
float x = 0; //  sets up for x initial position
float y = 400; // sets up for y initial position
float xspeed = 1.5; // Initial horizontal speed (constant)
float yspeed = -5; // Initial vertical speed
float yacceleration = 0.04; // Vertical acceleration (constant, down)
int x2 = 0;  //sets up end point variable for the lines (along with y2)
int y2 = 400; //set to window size so lines go to bottom of window

void setup() {
  size(400,400);
  background(255);
  frameRate(10);  //slows it down so you can think while it draws
}

void draw() { 
  r = int(random(255));
  g = int(random(255));
  b = int(random(255));
  
  ellipseMode(CENTER); // Position of ball measured from center
  //fill(r); // Inside of ball is various greyscale
  fill(r, g, b); // Inside of ball is rainbow
  ellipse(x + 5, y, 50, 50); // Draws ball with center at {x,y}
  line(x2, y2, x, y); //Draws a line from x = 0 to center of circle y
  //stroke(r, g, b);
  //strokeWeight(3);
  float futureYspeed = yspeed + yacceleration;
  line(x, y, (x + xspeed), (y + futureYspeed));
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
   }  // end of "if" function
   
   //comment back in to see lines appear to terminate at the ground under the balls
  // y2++;
  // x2++;
 
   
   if ( y >= 400 && x > 10) {
    noLoop();
   }
} // End of commands run by "draw" function
