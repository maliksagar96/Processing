class Walker{
  
  int x, y;
  // initializing walker position through constructor.
  Walker() {
  
    x = width/2;      //walker starts in the middle of the screen
    y = height/2;
    }
  
    void render() {
    stroke(0);
    point(x,y);
  }
  //step with equal probabilty of walking in any of the 4 directions  
  void step() {
  
      int r = int(random(4));   
    
      if(r == 0)          x++;
      else if(r == 1)     x--;
      else if(r == 2)     y++;
      else                y--;
      constrain(x, 0, width-1);
      constrain(y, 0, height-1);  
  }   
}
