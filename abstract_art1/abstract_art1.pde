float r = 0; // set rotation as float
int number = 0;

void setup() { 
  size(1000, 700); // background size
  background(random(225), random(225), random(225)); // set background color
  rectMode(CENTER); // set rectangle to center
  //noStroke(); // remove stroke
  //smooth(); // smooths
}

void draw() { 
  rectMode(CENTER);  
  rect(width/2, 650, 800, 100); 
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Press 'r' to reset the sketch", width/2, 630, 400, 200);
  text("Press 's' to save the sketch", width/2, 670, 400, 200);

  fill(random(0, 255), random(0, 255), random(0, 255), random(0, 255));  
  translate(mouseX, mouseY); // rect follows mouse
  rotate(r); // rect looping rotation
  rect(0, 0, random(12.5, 25), random(100, 150)); // set rect dimensions
  r = r + 0.08; // set rotation speed
  if (mouseX < width/2) {
    ellipse(mouseX, mouseY, random(50, 100), random(50, 100));
  } else {
    rect(mouseX, mouseY, random(50, 100), random(50, 100));
  }

}

void keyPressed() {
  if (key == 'r') {
    setup(); //it resets the sketch
  }
  if (key == 's') {
    println("Saving...");
    String s = "Artwork" + number +".jpg";
    save(s);
    number++;
    println("Done saving.");
  }
}
