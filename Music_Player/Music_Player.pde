//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float AlbumCoverX, AlbumCoverY, AlbumCoverWidth, AlbumCoverHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight
//
void setup() {
  //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun"; 
  println(displayInstructions);
  //
  //Population
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  AlbumCoverX = appWidth*0;
  AlbumCoverY = appHeight*1/9;
  AlbumCoverWidth = appWidth;
  AlbumCoverHeight = appHeight*6/9;
  PlayButtonX = appWidth*3.5/8;
  PlayButtonY = appHeight*8/9;
  PlayButtonWidth = appWidth*1/8;
  PlayButtonHeight = appHeight*1/12;
   SongLengthX = appWidth*0;
   SongLengthY = appHeight*7/9;
   SongLengthWidth = appWidth*0;
   SongLengthHeight = appHeight*1/20;
  //Layout DIVs
  //rect(X, Y, Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
 rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
 rect(AlbumCoverX, AlbumCoverY, AlbumCoverWidth, AlbumCoverHeight);
 rect(PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);
 /*
 rect(SongNameX, SongNameY, SongNameWidth, SongNameHeight);
 rect(BackArrowX, BackArrowY, BackArrowWidth, BackArrowHeight);
 rect(NextSongX, NextSongY, NextSongWidth, NextSongHeight);
 rect(PreviousSongX, PreviousSongY, PreviousSongWidth, PreviousSongHeight);
 rect(PauseX, PauseY, PauseWidth, PauseHeight);
 rect(SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight);
 rect(X, Y, Width, Height);
 rect(AlbumNameX, AlbumNameY, AlbumNameWidth, AlbumNameHeight);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 rect(X, Y, Width, Height);
 */
  //
  //CONTINUE HERE
  //Paper Folding for Case Study
  //Write Out Ratios on 2nd Case Study
  //More time for DIVs, Grade Progress
  //
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
