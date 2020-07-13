/*Just a short note to remember that down the screen we consider the y axis to be 
positive and not up the screen. 
*/

Walker w;

void setup(){
    size(800,600);
    w = new Walker();
    background(255);
}

void draw() {
  w.step(0.1,0.25,0.25);
  w.render();
}
