//Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
//Minim minim;
int currentSong = numberMusicSongs - numberMusicSongs;
AudioPlayer soundEffects1;
AudioPlayer playList1;
int appWidth, appHeight;
int size;
PFont generalFont;
String quit="QUIT";
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
  String quitButtonSound = "CarDoorClosing";
  String path = sketchPath( pathwaySoundEffects + quitButtonSound + extension );
  soundEffects1 = minim.loadfile( path );
  println(displayInstructions);
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
  generalFont = createFont("Harrington", size);
  //bottomFont = createFont("", size); //Note: more than one font allowed
  //
  //Population
 
  //Layout DIVs
  //rect(X, Y, Width, Height);
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
  String pathway = "./Images/";
  String Imh = "in_my_head";
  String BeautifulWonder = "Beautiful_Wonder";
  String Eldhrimner = "Eldhimner";
  String pathQuitSound = sketchPath( pathwaySoundEffects + quitButtonSound + extension);
  String pathImhSong = sketchPath( pathwayMusic + imh + extension);
  String pathbeautifulWonderSong = sketchPath( pathwayMusic +BeautifulWonder + extension);
  String pathEldhrimnerSong = sketchPath( pathwayMusic + Eldhrimner + extension);
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
    //CONTINUE HERE;
    //Paper Folding for Case Study;
    //Write Out Ratios on 2nd Case Study;
    //More time for DIVs, Grade Progress;
  }
}//End setup
//
void draw() {
  background(backgroundColour); //Grayscale
  if ( dayMode=true && lightMode == true ) { //Boolean keyBind, Logical Shortcut
    //CAUTION: See setup
    backgroundImage = loadImage( pathLightBackgroundImage );
  } else if ( lightMode == false ) {
    backgroundImage = loadImage( pathDarkBackgroundImage );
  } else
    //End draw
    //
    void keyPressed() {

      if (key=='Q' || key=='q')
      {
        soundeffect_1();
      }
      if (key==CODED && keyCode==ESC) //Hardcoded QUIT
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
      
       if ( key=='U'|| key=='u' ) currentSong= int ( rando(numberMusicSongs - numberMusicSongs, numberMusicSongs) ) ;
      
      
    }//End Day Mode
  //
  //soundEffects1.loop(0);
  //End keyPressed
  //
  void mousePressed() {
    if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
    {
      soundeffect_1();
    }
  } //End mousePressed
  //
  // End MAIN Program
