// Global Variables
float buttonX, buttonY, buttonWidth, ButtonHeight;
color buttonColour, brown=#5D4D18, red=#FF0505, white=#FFFFFF, reset=white;

void setup() {
  size(500, 600);
  //Population
  buttonX = width*1/4;
  buttonY = height*1/3;
  buttonWidth = width*1/2;
  ButtonHeight = height*1/3;
}//End setup()

void draw() {
  background(white);
  //println(mouseX, mouseY);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight ) {
    buttonColour = brown;
  } else {
    buttonColour = red;
  }//End IF Button Colour
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, ButtonHeight);
  fill(reset);
}//End draw()

void mousePressed() {
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
