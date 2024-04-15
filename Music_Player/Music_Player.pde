//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float AlbumCoverX, AlbumCoverY, AlbumCoverWidth, AlbumCoverHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight;
float BackArrowX, BackArrowY, BackArrowWidth, BackArrowHeight;
float SongNameX, SongNameY, SongNameWidth, SongNameHeight;
float NextSongX, NextSongY, NextSongWidth, NextSongHeight;
float PreviousSongX, PreviousSongY, PreviousSongWidth, PreviousSongHeight;
//
color backgroundColour, DarkBackground, WhiteBackground; 
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
  PlayButtonY = appHeight*85/100;
  PlayButtonWidth = appWidth*1/12;
  PlayButtonHeight = appHeight*1/12;
   SongLengthX = appWidth*0;
   SongLengthY = appHeight*7/9;
   SongLengthWidth = appWidth*0;
   SongLengthHeight = appHeight*1/20;
   BackArrowX = appWidth*0/100;
   BackArrowY = appHeight*0/100;
   BackArrowWidth = appWidth*5/100;
   BackArrowHeight = appHeight*5/100;
   SongNameX = appWidth*1/4;
   SongNameY = appHeight*78/100;
   SongNameWidth = appWidth*46/100;
   SongNameHeight = appHeight*5/100;
   NextSongX = appWidth*4.5/8;
   NextSongY = appHeight*85/100;
   NextSongWidth = appWidth*1/12;
   NextSongHeight = appHeight*1/12;
   PreviousSongX = appWidth*2.5/8;
   PreviousSongY = appHeight*85/100;
   PreviousSongWidth = appWidth*1/12;
   PreviousSongHeight = appHeight*1/12;
  //Layout DIVs
  //rect(X, Y, Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
 rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
 rect(AlbumCoverX, AlbumCoverY, AlbumCoverWidth, AlbumCoverHeight);
 rect(PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);
 rect(BackArrowX, BackArrowY, BackArrowWidth, BackArrowHeight);
 rect(SongNameX, SongNameY, SongNameWidth, SongNameHeight);
 rect(NextSongX, NextSongY, NextSongWidth, NextSongHeight);
 rect(PreviousSongX, PreviousSongY, PreviousSongWidth, PreviousSongHeight);
 rect(SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight);
 /*
 
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
 //Var Population
 DarkBackground = 0; //Gray Scale
 WhiteBackground = #255; //Gray Scale
if ( hour()>=9 && hour() <=17) backgroundColour = WhiteBackground;
if ( hour()<9 && hour() >17)  backgroundColour = DarkBackground;
 

  //
  //CONTINUE HERE
  //Paper Folding for Case Study
  //Write Out Ratios on 2nd Case Study
  //More time for DIVs, Grade Progress
  //
} //End setup
//
void draw() {
  background(backgroundColour); //Grayscale
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
