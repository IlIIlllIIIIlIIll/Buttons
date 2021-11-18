// Global Variables
float buttonX, buttonY, buttonWidth, ButtonHeight;
color buttonColour, green=#5D4D18, red=#FF0505, yellow=#FFF515, reset=yellow;
String balls = "among us sussy";
PFont amongusballs ;
void setup() {
  fullScreen();
  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  ButtonHeight = displayHeight*1/3;
  amongusballs = createFont("Comic Sans MS",55);
}//End setup()


void draw() {
  background(random(255), random(255), random(255));
  //println(mouseX, mouseY);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight ) {
    buttonColour = green;
  } else {
    buttonColour = red;
  }//End IF Button Colour
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, ButtonHeight);
  fill(reset);
  text(balls,buttonX, buttonY, buttonWidth, ButtonHeight);
  textFont(amongusballs,55);
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
