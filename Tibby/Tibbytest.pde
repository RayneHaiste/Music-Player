//
//Global Variables
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
String title="Tiburon";
int size;
color purple=#FF00FF;
float boxX, boxY, boxWidth, boxHeight;
PFont boxFont;
String box= "The hyundai tiburon base model comes with a 2.4L I4, N/A engine, coming with FWD and a weight of a little over 2 tonnes";
//
//Display Geoemtry, Display Orientation: landscape, portrait, square
fullScreen();
//
//Concatenation & Inspection of Variables
println("Display Monitor:", "width:"+displayWidth, "\theight:"+displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
boxX = appWidth*3/10;
boxY = appHeight*3/10;
boxWidth = appWidth*4/10;
boxHeight = appHeight*3/10;
//
//Single Executed Code: Font SETUP
//Fonts from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts to choose from, then createFont
size=50;
titleFont = createFont("Harrington", size);
size=50;
boxFont = createFont("Harrington", size);
// Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
//
//DIVs & rect()s: rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
rect(boxX, boxY, boxWidth, boxHeight);
//rect(X, Y, Width, Height); //footer
//
//Repeated Code: draw()ing text
fill(purple); //Ink
textAlign(CENTER,CENTER); //Align X&Y
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 80;
textFont(titleFont, 20);
text(title, titleX, titleY, titleWidth, titleHeight);
text(box, boxX, boxY, boxWidth, boxHeight);
