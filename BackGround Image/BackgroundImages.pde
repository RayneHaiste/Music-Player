//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundImage;
//
void setup() {
  //Display
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  String backgroundImageName = "nissan-gtr-50-by-italdesign (1).jpg";
  String extension = ".jpg";
  String pathway = "../../images/"
  String portrait = "Portrait";
  String path = pathway + landscape_Portrait + backgroundImageName +extension;
  String path = pathway + landscape_Portrait + backgroundImageName +extension;
  backgroundImage = loadImage("");
  //
  //DIV
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End setup
//
void draw() {
  image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
