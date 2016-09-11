class JuliaSet {
  CoordTransform coordTransform = new CoordTransform();  
  
  final int MAX_ITERATIONS = 300;
  final float MAX_DISTANCE = 3f;
  
  // blue
  final int[] colours = { #ffffff, #e6f5ff, #ccebff, #b3e0ff, #99d6ff, #80ccff, #66c2ff, #4db8ff, #33adff, #1aa3ff, #0099ff,
                          #008ae6, #007acc, #006bb3, #005c99, #004d80, #003d66, #002e4d, #001f33, #000f1a, #000000 };
  
  // blue 2  
  //final int[] colours = { #003FFF, #003DF7,  #003BF0, #0039E8, #0037E0,  #0035D9, #0033D1, #0031C9, #002FC2, #002DBA, #002BB2,
  //                        #0029AB, #0027A3, #00259B, #002394, #00218C,#001E84, #001C7C, #001A75, #00186D, #001665, #00145E, #001256,
  //                        #00104E, #000E47, #000C3F, #000A37, #000830, #000628, #000420, #000219, #000011 };

                          
  
  // red
//  final int[] colours = { #ffffff, #ffe6e6, #ffcccc, #ffb3b3, #ff9999, #ff8080, #ff6666, #ff4d4d, #ff3333, #ff1a1a, #ff0000, 
//                          #e60000, #cc0000, #b30000, #990000, #800000, #660000, #4d0000, #330000, #1a0000, #000000 };
  
  int computeColour(int x, int y) {

    int iterations = computeIterations(coordTransform.screen_to_world(x, y)); 
    
    if (iterations >= MAX_ITERATIONS) {
      return #000000;
    }
    
//    return colours[colours.length-1 - (iterations % colours.length)];
    
    return colours[iterations % colours.length];
  }

  
  int computeIterations(Coord z_orig) {
    
    Coord z = z_orig.clone();
    
    int iteration = 0;
    finished = false;
    do {
      
      z = julia_iteration(z);
      iteration++;
    } while (iteration < MAX_ITERATIONS && z.x*z.x + z.y*z.y < MAX_DISTANCE);
    
    return iteration;
  }
  
  
  Coord julia_iteration(Coord z) {
    
    float x = z.x * z.x - z.y * z.y + Config.C_X;
    float y = 2*z.x*z.y + Config.C_Y; 
    
    return new Coord(x, y);
    
  }
  
}