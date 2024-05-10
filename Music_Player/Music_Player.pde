//Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
//Minim minim;
AudioPlayer soundEffects1;
AudioPlayer playList1;
int appWidth, appHeight;
int size;
PFont generalFont;
String quit="QUIT";
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float AlbumCoverX, AlbumCoverY, AlbumCoverWidth, AlbumCoverHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float SongLengthX, SongLengthY, SongLengthWidth, SongLengthHeight;
float BackArrowX, BackArrowY, BackArrowWidth, BackArrowHeight;
float SongNameX, SongNameY, SongNameWidth, SongNameHeight;
float NextSongX, NextSongY, NextSongWidth, NextSongHeight;
float PreviousSongX, PreviousSongY, PreviousSongWidth, PreviousSongHeight;
//


void setup() {
  //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Landscape is HARDCODED
  minim = new Minim (This);
  //soundEffects1 = minim.loadFile( path );
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Flip phone";
  String extension = ".mp3";
  String quitButtonSound = "";
  String path = sketchPath( pathwaySoundEffects + quitButtonSound + extension );
  soundEffects1 = minim.loadfile( path );
  println(displayInstructions);
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
  generalFont = createFont("Harrington", size);
  //bottomFont = createFont("", size); //Note: more than one font allowed
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
   */
  divs();
  
  
  color backgroundColour, darkBackground=0, whiteBackground=255;
color foregroundColour;
Boolean whiteMode=false;
Boolean lightMode=false;
Boolean dayMode=false;
String extensionJPG = ".jpg";
String extensionPNG = ".png";
String pathway1 ="Porsche918";
String pathway2 ="porsche918WHITE";
String pathway = "../O,ages/";
String pathDarkBackgroundImage, pathLightBackgroundImage;
PImage albumCoverImage;
PImage backgroundImage;
PImage Yeat, Porsche918, porsche918WHITE;

  //Var Population
  DarkBackground = 0; //Gray Scale
  WhiteBackground = #255; //Gray Scale
  whiteMode = True;
  //if ( hour()>=9 && hour()<=17 ) backgroundColour = whiteBackground;
  //if ( hour()<9 && hour()>17 ) backgroundColour = darkBackground;
  if ( dayMode==true && hour()>=9 && hour()<=17 ) { //Day & Night Mode Clock Choice
      backgroundColour = whiteBackground;
    foregroundColour = black;
    backgroundImageName = MusicPlayerImage;
    path = pathway + landscape_Square + backgroundImageName + extension;
    backgroundImage = loadImage( pathway2 );
  } else if ( lightmode==true ) {
      backgroundColour = black;
    foregroundColour = whiteBackground;
    backgroundImage = loadImage( path1 );
 
  } else {
    backgroundColour = darkBackground;
    foregroundColour = yellow; 
    backgroundImage = loadImage( path1 );
    if ( hour()>=9 && hour()<=17 ) foregroundColour = white;
    //CONTINUE HERE
    //Paper Folding for Case Study
    //Write Out Ratios on 2nd Case Study
    //More time for DIVs, Grade Progress
    //
  }
}//End setup
  //
  void draw() {
    background(backgroundColour); //Grayscale
  } //End draw
  //
  void keyPressed() {
    if (key=='Q' || key=='q')
    {
      soundeffect_1();
    }
    if (key==CODED && keyCode==ESC) //Hardcoded QUIT, no sound available
    {
      soundeffect_1();
    }
    //CAUTION, must return to "Request White, Light Mode"
    if ( key=='W' || key=='w' ) { //Day Mode, White Light Containing Blue Colour
      if (  lightMode == false ) {
        lightMode = true;  //Light Mode ON
      } else {
        lightMode = false; //Dark Mode ON, no darkMode Boolean required
      }
    }
  }//End Day Mode
    //
    //soundEffects1.loop(0);
   //End keyPressed
  //
  void mousePressed() {
    
    
    
    
    
  }//End mousePressed
  //
  // End MAIN Program
