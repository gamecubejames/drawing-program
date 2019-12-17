//Declare the boolean
boolean drawingEllipse = false;
//AND EVEN MORE ADVANCED:
//An int set to the value of last mouse press
int lastClick = 0;
void setup() {
  size (500, 500);
  smooth();
  background (255);
  rect(50, 50, 50, 50);
}
void draw() {
  if (mousePressed) {
    if ((mouseX > 50)&&(mouseX < 100)&& (mouseY > 50)&&(mouseY < 100) && millis() - lastClick > 400) {
      //If the button is clicked, toggle the boolean on / off
      drawingEllipse = !drawingEllipse;
      lastClick = millis();
    }
  }
  //Just put this in draw(), you don't need a special method
  if(drawingEllipse && mousePressed && millis() - lastClick > 400) {
    ellipse (mouseX, mouseY, 50, 50);
  }
  //And finally, an identifier for true / false:
  if(drawingEllipse) fill(0);
  rect(50, 50, 50, 50);
  fill(255);
}
