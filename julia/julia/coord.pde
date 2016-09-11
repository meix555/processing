class Coord {

  float x;
  float y;

  Coord(float x_, float y_) {
    x = x_;
    y = y_;
  }

  Coord clone() {
    return new Coord (x, y);
  }
  
  String toString() {
    return "x: " + x + " y: " + y;
  }

}