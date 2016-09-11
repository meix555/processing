void setup() {
  background(255, 255, 0);
  size(500, 500);
  stroke(127);
  strokeWeight(5);
  fill(#6AC152);
}

void draw() {
  stroke(0);
  ellipse(250, 250, 150, 150);
  
  //int[][] points = new int[50][50];
  
  for (int x = 0; x < 40; x++) {
    for (int y = 0; y < 40; y++) {
      stroke(random(0, 255), random(0, 255), random(0, 255));
      point(50 + x * 10, 50 + y * 10);
    }
  }
  
}