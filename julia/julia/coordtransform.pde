class CoordTransform {
  
  Coord screen_to_world(int screen_x, int screen_y) {
    float world_coord_x = Config.WORLD_MIN_X + Config.WORLD_DELTA_X / Config.SCREEN_WIDTH * screen_x;
    float world_coord_y = Config.WORLD_MAX_Y - Config.WORLD_DELTA_Y / Config.SCREEN_HEIGHT * screen_y;
    
    Coord world_coord = new Coord(world_coord_x, world_coord_y);
    
    return world_coord;
  }
  
}