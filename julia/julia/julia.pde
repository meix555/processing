JuliaSet juliaSet = new JuliaSet();

int [][] pixels = new int[Config.SCREEN_WIDTH][Config.SCREEN_HEIGHT];

void setup() {

  size(1920, 1080);
//  size(640, 480);

  computeJuliaSet();
  drawJuliaSet();
  
  save("julia.png");
}


void computeJuliaSet() {

  for (int x = 0; x < Config.SCREEN_WIDTH; x++) {
    for (int y = 0; y < Config.SCREEN_HEIGHT; y++) {
      pixels[x][y] = juliaSet.computeColour(x, y);
    }
  }
}

void drawJuliaSet() {
  
  for (int x = 0; x < Config.SCREEN_WIDTH; x++) {
    for (int y = 0; y < Config.SCREEN_HEIGHT; y++) {
      stroke(pixels[x][y]);
      point(x, y);
    }
  }
}