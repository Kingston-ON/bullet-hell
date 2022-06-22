// import ddf.minim.*;
//XOOOS
PImage[] gif;
int currentPic = 0;
//String leadingZeroes = "0";

//Palette
color dark = #000000;
color orange = #F23A08;
color blue = #4DFFFB;
color yellow1 = #FFCD72;
color brown = #813714;


color red = #E63946;
color dblue= #1D3557;
color lblue = #F1FAEE;
color yellow = #FDCA40;
//Constants
//final int LOADING = 0;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode;
boolean player = false;
boolean free = false;

//image
PImage spaceship, good, bad, explode, redghost, greenghost, blueghost;

boolean up, down, left, right, space, a, s, w, d, f, ckey, q, o;
boolean[] alive;
ArrayList<GameObject> objects;
Starfighter player1;
Starfighter2 player2;
Enemy e1;
Enemy2 e2;
Enemy3 e3;

void setup() {
  //size(800,800);
  fullScreen();
  frameRate(60);
  mode = INTRO;
  rectMode(CENTER);
  imageMode(CENTER);
  noStroke();

  gif = new PImage[16];
  int i = 0;
  while (i<16) {
    gif[i] = loadImage(i + ".gif");
    i++;
  }

  spaceship = loadImage("spaceship.png");
  good = loadImage("socialcreditgood.jpg");
  bad = loadImage("socialcreditbad.gif");
  explode = loadImage("explode.gif");
  redghost = loadImage("redghost.png");
  greenghost = loadImage("greenghost.png");
  blueghost = loadImage("blueghost.png");

  objects = new ArrayList<GameObject>();
  player1 = new Starfighter();
  player2 = new Starfighter2();
  e1 = new Enemy();
  e2 = new Enemy2();
  e3 = new Enemy3();
  objects.add(player1);
  
}

void draw () {
  if (mode == INTRO) intro();
  else if (mode == GAME) game();
  else if (mode == GAMEOVER) gameover();
  else if (mode == PAUSE) pause();
}
