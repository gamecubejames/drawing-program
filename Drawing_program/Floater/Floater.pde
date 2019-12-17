// Global Variables
Boolean draw = false;
int pencilDiameter = 10;
float rect1X; 
float rect1Y;
float rect2X;
float rect2Y;
float rect3X;
float rect3Y;
float rect4X;
float rect4Y;
float rect5X;
float rect5Y;
float rect6X;
float rect6Y;
float rect7X;
float rect7Y;
float rect8X;
float rect8Y;
float rect9X;
float rect9Y;
float rect10X;
float rect10Y;
float rectDiameter;
void setup() {
  size(900, 700);
  quitButtonSetup();
}

void draw() {
  rect (rect1X, rect1Y, rectDiameter, rectDiameter);
  rect (rect2X, rect2Y, rectDiameter, rectDiameter);
  rect (rect3X, rect3Y, rectDiameter, rectDiameter);
  rect (rect4X, rect4Y, rectDiameter, rectDiameter);
  rect (rect5X, rect5Y, rectDiameter, rectDiameter);
  rect (rect6X, rect6Y, rectDiameter, rectDiameter);
  rect (rect7X, rect7Y, rectDiameter, rectDiameter);
  rect (rect8X, rect8Y, rectDiameter, rectDiameter);
  rect (rect9X, rect9Y, rectDiameter, rectDiameter);
  rect (rect10X, rect10Y, rectDiameter, rectDiameter);
  
  
  //background();
  //Drawing Code
  
    ellipse (mouseX, mouseY, pencilDiameter, pencilDiameter);
  }


void mousePressed() {
  quitButtonMouseClicked();
  // Boolean to Activate Drawing code
  if (draw == false) {
    draw = true;
  }
}

void mouseReleased() {
  if (draw == true); 
  {
    draw = false;
  }
}
