void setup() {
  size(500, 500);
}

void draw() {
  
  for (int i = 40; i > 0; i--) {
    ellipse(250, 250, 10 + i*10, 10 + i * 10);
  }
  
  rect(45, 50, 100, 200);
  
}