// Just thinking about variables for location and speed of ball.
float x = 100;
float y = 100;
float xspeed = 2;
float yspeed = 5;

void setup() {
  size(640,360);
  background(255);
}

void draw() {
  background(255);

  // Move the ball according to its speed.
  x = x + xspeed;
  y = y + yspeed;

  // Check for edges of window to bounce back.
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  stroke(0);
  fill(200, 200, 0);
  // Display the ball at the location (x,y).
  ellipse(x,y,20,20);
}
