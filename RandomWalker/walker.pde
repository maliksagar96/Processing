class Walker{
  
  int x, y;
  // initializing walker position through constructor.
  Walker() {
  
    x = width/2;      //walker starts in the middle of the screen and not at origin.
    y = height/2;
    }
  
    void render() {
    stroke(0);
    point(x,y);
  }
  
  //p1 = probabilty of occurence of step of type 1 and so on. 
  //Please make sure you always take care of p1 + p2 +p3 + p4 = 1
  void step(float p1, float p2, float p3) {
  
    float r = random(1);   
    
      if(r < p1)              x++;    //step towards right of the initial position.  
      else if(r < p2+p1)      x--;    //step towards left of the initial position. 
      else if(r < p3+p1+p2)   y++;    //step towards down of the initial position.  
      else                    y--;    //step towards up of the initial position.
      constrain(x, 0, width-1);        
      constrain(y, 0, height-1);  
  }   
}
