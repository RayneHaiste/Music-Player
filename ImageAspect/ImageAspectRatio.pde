//Global Variables
int appWidth, appHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
PImage albumCover;
String albumCoverPath; //Lesson Note: Building Global Var from Local Var, System Resources
String Yeat = "Yeat_-_2093";
String extension = ".png";
String pathway = "../Images/"; //Relative Pathway
String landscape_Square = "Landscape & Square Images/";

//
void setup() {
  //Display
  // size(600, 400); //width, height //400, 500
  fullScreen(); //displayWidth, displayHeight
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  albumCoverPath = pathway + Yeat + extension ;
  albumCover= loadImage( albumCoverPath );
  //
  //Population
  albumCoverX = appWidth*18/100; //Percents Example
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
  albumCoverHeight = appHeight*6/16; //Fraction Example
  //
  //Variable Population
  float smallerAlbumCoverDimension = ( albumCoverWidth < albumCoverHeight ) ? aLbumCoverWidth : albumCoverHeight ;
  int albumCoverImageWidthPixel = 300;
  int albumCoverImageWidthPixel = 300;
  float albumCoverAspectRatio = ;
  float largerAlbumCoverDimension = ; //Aspect Ratio
  //DIVs
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //End setup
//
void draw() {
  image( albumCover, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight );
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
