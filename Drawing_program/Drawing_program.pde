// Global Variables
color ink, black=#000000;
boolean draw = false;
int pencilDiameter = 5;
int lastClick = 0;
int drawingSurfaceX;
int drawingSurfaceY;
int drawingSurfaceWidth;
int drawingSurfaceHeight;
int drawingDiameter;
void setup() {
size(600, 600);
drawingSurfaceX = (0);
drawingSurfaceY = (50);
drawingSurfaceWidth = (500);
drawingSurfaceHeight = (550);
smooth();
background (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
{rect(500, 0, 200, 700);} 
{rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);} 
{rect(0, 0, 600, 75);}
fill(#000000); ellipse(525, 100, 40, 40);
{fill(#FF0000); ellipse(575, 100, 40, 40);}
fill(#0300FF); ellipse(525, 150, 40, 40);
{fill(#14D30B); ellipse(575, 150, 40, 40);}
fill(#A500FF); ellipse(525, 200, 40, 40);
{fill(#FAFF00); ellipse(575, 200, 40, 40);}
fill(#FF9900); ellipse(525, 250, 40, 40);
{fill(#FF95C7); ellipse(575, 250, 40, 40);}
{fill(#FFFFFF); ellipse(550, 350, 80, 80);}
{fill(#000000); ellipse(350, 35, 10, 10);}
fill(#000000); ellipse(400, 35, 20, 20);
{fill(#000000); ellipse(450, 35, 30, 30);}
{fill(#000000); ellipse(500, 35, 40, 40);}
}
void draw() {
  if (draw == true) {
    fill(ink);
    //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
    strokeWeight(5);
  if(draw == true) {
 fill (#FF0000);line(mouseX,mouseY, pmouseX, pmouseY);}
   if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY  && mouseY<drawingSurfaceY+drawingSurfaceHeight
     == false)                                                                                                                 
 ellipse (mouseX, mouseY, pencilDiameter, pencilDiameter);
}

void mousePressed() {
  
if (mousePressed) {
   if ((mouseX > 50)&&(mouseX < 100)&& (mouseY > 50)&&(mouseY < 100) && millis() - lastClick > 400) {
     if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY  && mouseY<drawingSurfaceY+drawingSurfaceHeight)
      println("drawing surface");
      if (draw == false) {
      draw = true;
      } else {
        draw = false;
      }
        draw = !draw;
      
      
      lastClick = millis();
    }
  }
  if(draw && mousePressed && millis() - lastClick > 00) {
    //ellipse (mouseX, mouseY, drawingSurfaceX, drawingSurfaceY);
  }
  
  if(draw) fill(100, 150, 275, 350);
  fill(#000000); ellipse(525, 100, 40, 40);
{fill(#FF0000); ellipse(575, 100, 40, 40);}
fill(#0300FF); ellipse(525, 150, 40, 40);
{fill(#14D30B); ellipse(575, 150, 40, 40);}
fill(#A500FF); ellipse(525, 200, 40, 40);
{fill(#FAFF00); ellipse(575, 200, 40, 40);}
fill(#FF9900); ellipse(525, 250, 40, 40);
{fill(#FF95C7); ellipse(575, 250, 40, 40);}
{fill(#FFFFFF); ellipse(550, 350, 80, 80);}
{fill(#000000); ellipse(350, 35, 10, 10);}
fill(#000000); ellipse(400, 35, 20, 20);
{fill(#000000); ellipse(450, 35, 30, 30);}
{fill(#000000); ellipse(500, 35, 40, 40);}
  fill(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
 drawingDiameter = width*1/100;
{}
  {if(draw == false) draw = true;}
}

void keyPressed() {
}
void mouseReleased() {
   {if(draw == true) draw = false;}
}
