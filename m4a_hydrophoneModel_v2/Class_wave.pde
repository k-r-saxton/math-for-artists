//The Wave Class
class Wave {
  //Location
  PVector loc;
  //In case you are not familiar with PVectors, you can
  //think of it as a point; it holds an x and a y position
 
  //The distance from the wave origin
  int farOut;
 
  //Color
  color strokeColor;
 
  Wave() {
    //Initialize the Location PVector
    loc = new PVector();
   
    //Set location to the Mouse Position
    loc.x = mouseX;
    loc.y = mouseY;
   
    //Set the distance out to 1
    farOut = 1;
   
    //Randomize the Stroke Color
    strokeColor = color(random(255), random(255), random(255));
  }
 
  void update() {
    //Increase the distance out
    farOut += 1;
  }
 
  void display() {
    //Set all ellipses to draw from the Center
  ellipseMode(CENTER);
    //Set the Stroke Color
    stroke(strokeColor);
   
    //Draw the ellipse
    ellipse(loc.x, loc.y, farOut, farOut);
  }
 
  boolean dead() {
    //Check to see if this is all the way out
    if(farOut > 50) {
      //If so, return true
      return true;
    }
    //If not, return false
    return false;
  }
}
