float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight, albumCoverWidthAdjusted, albumCoverHeightAdjusted;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float AlbumCoverX, AlbumCoverY, AlbumCoverWidth, AlbumCoverHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight;
float BackArrowX, BackArrowY, BackArrowWidth, BackArrowHeight;
float SongNameX, SongNameY, SongNameWidth, SongNameHeight;
float NextSongX, NextSongY, NextSongWidth, NextSongHeight;
float PreviousSongX, PreviousSongY, PreviousSongWidth, PreviousSongHeight;
//
//
void divs() {
  population();
  drawRects();
} //End DIVs
//
void population() {
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth-1;
  backgroundHeight = appHeight-1;
  albumCoverX = appWidth*18/100; //Percents Example
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
  albumCoverHeight = appHeight*6/16; //Fraction Example
  playButtonX = appWidth*3.5/8;
  playButtonY = appHeight*8/9;
  playButtonWidth = appWidth*1/8;
  playButtonHeight = appHeight*1/12;
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
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
} //End Population
//
void drawRects() { //Layout DIVs
  //Formula: rect(X, Y, Width, Height);
  //
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  //
  //rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
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
  //
} //End Draw Rectangles;
//End DIVs SubProgram;
