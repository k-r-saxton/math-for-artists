
// Based on Shiffman's code modified by J. Cejudo, R. Yarden: 2013; additional modifications, K.Saxton
// from example 10-3, Learning Processing: Bouncing ball with intersection

// three ball variables, third ball is red herring.
Ball ball1;
Ball ball2;
Ball ball3;
float cmX, cmY;

void setup() {
  size(400,400);
  smooth();
  
  // Initialize balls
  ball1 = new Ball(20);
  ball2 = new Ball(32);
  ball3 = new Ball(40);

  fill(255,0,0);
  ellipse(50,50,5,5);  
  println(ball1.mass);
  println(ball2.mass);
  println(ball3.mass);
}

void draw() {
  background(255);
  // Move and display balls
  ball1.move();
  ball2.move();
  ball3.move();
  
//  CENTER OF MASS
  cmX = (ball1.x * ball1.mass + ball2.x * ball2.mass)/(ball1.mass + ball2.mass);
  cmY = (ball1.y * ball1.mass + ball2.y * ball2.mass)/(ball1.mass + ball2.mass);
  fill(255,0,0);
  ellipse(cmX, cmY, 5,5);
  
  
  if (ball1.intersect(ball2)) { 
                                 /* New! An object can have a function 
                                 that takes another object as an argument. 
                                 This is one way to have objects communicate. 
                                 In this case they are checking to see 
                                 if they intersect; then if yes: flicker blue!*/
   ball1.highlight();
   ball2.highlight();
      

    // println(ball1.x);
    // println(ball1.y); 
      ball1.xspeed *= -1;
      ball1.yspeed *= -.95;
      ball2.xspeed *= -1;
      ball2.yspeed *= -1;

// To look at each interaction with different rules:      
//      ball1.xspeed = (ball1.xspeed*(ball1.mass - ball2.mass) + 2*ball2.mass*ball2.xspeed)/(ball1.mass + ball2.mass);
//      ball1.yspeed = (ball1.yspeed*(ball1.mass - ball2.mass) + 2*ball2.mass*ball2.yspeed)/(ball1.mass + ball2.mass);
//        
//      ball2.xspeed = (ball2.xspeed*(ball2.mass - ball1.mass) + 2*ball1.mass*ball1.xspeed)/(ball1.mass + ball2.mass);
//      ball2.yspeed = (ball2.yspeed*(ball2.mass - ball1.mass) + 2*ball1.mass*ball1.yspeed)/(ball1.mass + ball2.mass);
//      
//      ball1.x += 0.05*ball1.x*(-ball1.xspeed/abs(ball1.xspeed)); 
//      ball1.y += 0.05*ball1.y*(-ball1.yspeed/abs(ball1.yspeed));
//      println("ball1 xspeed = " + ball1.xspeed);
//      println("ball1 yspeed = " + ball1.yspeed);
//      println("ball2 xspeed = " + ball2.xspeed);
//      println("ball2 yspeed = " + ball2.yspeed);
  }
  
  ball1.display();
  ball2.display();
  ball3.display();
  
}


