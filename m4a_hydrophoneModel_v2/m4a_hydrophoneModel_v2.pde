//First version, sketch based on code from OpenProcessing
//Create the ArrayList of Waves

//working with Justin

ArrayList<Wave> waves = new ArrayList<Wave>();
PImage img; 

void setup() {
  size(500, 300);
  img = loadImage("BoatModel_background.jpg");

  //Set all ellipses to draw from the Center
  ellipseMode(CENTER);
}
void draw() {
  //Clear the background with 21 opacity
  //background(255, 255, 255, 21);
  image(img, 0, 0);
  
  //If the mouse is pressed, draw the wave
  if (mousePressed) {
    //Create a new Wave
    Wave w = new Wave();
    //and Add it to the ArrayList
    waves.add(w);
  }

  //Run through all the waves
  for (int i = 0; i < waves.size(); i ++) {
    //Run the Wave methods
    waves.get(i).update();
    waves.get(i).display();

    //Check to see if the current wave has gone all the way out
    if (waves.get(i).dead()) {
      //If so, delete it
      waves.remove(i);
    }
  }
}

