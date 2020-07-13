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
  //p1 = probabilty of occurence of step of type 1 and so on. 
  void step(float p1, float p2, float p3) {
  
    float r = random(1);   
    
      if(r < p1)              x++;
      else if(r < p2+p1)      x--;
      else if(r < p3+p1+p2)   y++;
      else                    y--;
      constrain(x, 0, width-1);
      constrain(y, 0, height-1);  
  }   
}
