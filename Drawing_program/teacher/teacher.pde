// Global Variables
color ink, black=#000000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
Boolean draw=false;

void setup() {
  size(500, 600);
  //quitButtonSetup();
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;

  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

void draw() {

 // quitButtonDraw();

  if (draw == true) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
}

void mousePressed() {
  //quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
    ink = black; // example to change ink
    drawingDiameter = width*1/100;
  }
}
//© 2019 GitHub, Inc.
