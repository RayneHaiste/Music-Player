import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//global variables
Minim minim; //creates object to access all functions
AudioPlayer playList1;
AudioPlayer soundEffects1;
//
int appWidth, appHeight;
//


//
void setup () {
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth; //width
  appHeight = displayHeight; //height
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun";
  //println(displayInstructions);
  //println ("Relative Pathway", Music+InMyHead+extension);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String pathwaySoundEffects = "./Songs&SoundEffect";
  String Music = "./Songs&SoundEffect"; //Relative Path
  String quitButtonSound = "CarDoorClosing";
  String extension = ".mp3";
  String InMyHead = "in my head – Rexlambo (No Copyright Music)";
  String  pathQuitButtonSound = 
    //println ( pathwaySoundEffects+quitButtonSound+extension );
    String path = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  //println ( path );
  soundEffects1 = minim.loadFile( pathQuitButtonSound );
  //playList1 = minim.loadFile( path );
  //
}
//
void draw() {
  //println("");
  //playList1.loop(0);
}
//
void keyPressed() {
}
//
void mousePressed() {
}
//
//END MAIN PROGRAM
