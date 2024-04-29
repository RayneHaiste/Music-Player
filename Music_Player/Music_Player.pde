//Global Variables
  int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight;
float BackArrowX, BackArrowY, BackArrowWidth, BackArrowHeight;
float SongNameX, SongNameY, SongNameWidth, SongNameHeight;
float NextSongX, NextSongY, NextSongWidth, NextSongHeight;
float PreviousSongX, PreviousSongY, PreviousSongWidth, PreviousSongHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int size;
PFont generalFont;
String quit="QUIT";
//
color backgroundColour, darkBackground=0, whiteBackground=255; //Gray Scale, note much smaller than COLOR
color foregroundColour;
color white=255, green=#00FF8E, black=0, purple=#FF00FF; //Hexidecimal, see Tools / Colour Selector
Boolean whiteMode=false;
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
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
  generalFont = createFont("Harrington", size);
  //bottomFont = createFont("", size); //Note: more than one font allowed
  // Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
  //
  //Population
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  albumCoverX = appWidth*18/100;
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
  albumCoverHeight = appHeight*6/16; //Fraction Example
  playButtonX = appWidth*3.5/8;
  playButtonY = appHeight*8/9;
  playButtonWidth = appWidth*1/12;
  playButtonHeight = appHeight*1/12;
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
   BackArrowX = appWidth*0/100;
   BackArrowY = appHeight*0/100;
   BackArrowWidth = appWidth*5/100;
   BackArrowHeight = appHeight*5/100;
   SongNameX = appWidth*1/4;
   SongNameY = appHeight*78/100;
   SongNameWidth = appWidth*46/100;
   SongNameHeight = appHeight*5/100;
   NextSongX = appWidth*4.48/8;
   NextSongY = appHeight*85/100;
   NextSongWidth = appWidth*1/12;
   NextSongHeight = appHeight*1/12;
   PreviousSongX = appWidth*2.5/8;
   PreviousSongY = appHeight*85/100;
   PreviousSongWidth = appWidth*1/12;
   PreviousSongHeight = appHeight*1/12;
   SongLengthX =appWidth*2/10;
   SongLengthY =appHeight*75/100;
   SongLengthWidth =appWidth*6/10;
   SongLengthHeight =appHeight*1/12;
  //Layout DIVs
  //rect(X, Y, Width, Height);
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  //rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  //rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
   rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);

 rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
 rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
 rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
 rect(BackArrowX, BackArrowY, BackArrowWidth, BackArrowHeight);
 rect(SongNameX, SongNameY, SongNameWidth, SongNameHeight);
 rect(NextSongX, NextSongY, NextSongWidth, NextSongHeight);
 rect(PreviousSongX, PreviousSongY, PreviousSongWidth, PreviousSongHeight);
 rect(SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight);
 
  //
  //Variable Population
  //if ( hour()>=9 && hour()<=17 ) backgroundColour = whiteBackground;
  //if ( hour()<9 && hour()>17 ) backgroundColour = darkBackground;
  if ( whiteMode==true && hour()>=9 && hour()<=17 ) {
    backgroundColour = whiteBackground;
    foregroundColour = black;
  } else {
    backgroundColour = darkBackground;
    foregroundColour = green; //Note: if(hour()<9&&hour()>17)
    if ( hour()>=9 && hour()<=17 ) foregroundColour = white;
  }
  //
} //End setup
//
void draw() {
  background(backgroundColour);
  fill(green);
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  fill(green);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  fill(green);
   rect(PreviousSongX, PreviousSongY, PreviousSongWidth, PreviousSongHeight);
   fill(green);
    rect(NextSongX, NextSongY, NextSongWidth, NextSongHeight);
    fill(green);
    rect(SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight);
  //
  //Quit Button
  //fill(purple);
  //if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) fill(yellow);
  fill(purple);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    fill(green);
    rect( quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7);
  } else {
    fill(purple);
  }
  fill(foregroundColour); //Resetting the Defaults
  //Quit, Text
  fill(foregroundColour); //Ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = appHeight*1/23; // Var based on ratio of display
  textFont(generalFont, size);
  text(quit, quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7); //Inside rect() above
  fill(foregroundColour); //Resetting the Defaults
  //

  println(mouseX, mouseY);

  //
} //End draw
//
void keyPressed() { //Listener
  if (key=='Q' || key=='q') exit();
  if (key==CODED && keyCode==ESC) exit();
  if (key=='W' || key=='w') ;
} //End keyPressed
//
void mousePressed() { //Listener
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
  {
    exit();
  }
} //End mousePressed
//
// End MAIN Program
