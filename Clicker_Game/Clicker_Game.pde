// Jake Choi
// Block: 1-1B
// Programming 11
// Oct 7 

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// MODE VARIABLES
int mode;
final int INTRO = 0;
final int INSTRUCTIONS = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int OPTIONS = 5;

// TARGET VARIABLES
float x, y, d;
float vx, vy;
int score, lives;
int highscore;

// OPTIONS 

// SOUND VARIABLES
Minim minim;
AudioPlayer theme, ballbounce;

// IMAGE VARIABLES
PImage backgroundpic;
PImage gameoverpic;
PImage hinata;
PImage oikawa;
PImage optionsbackground;
PImage mikasa;
PImage molten;
PImage court;

// FONT
PFont haikyuu;

void setup() {
  size(800, 650);
  mode = INTRO;
  backgroundpic = loadImage("mainbackground.jpg");
  gameoverpic = loadImage("gameover.jpg");
  hinata = loadImage("hinata.png");
  oikawa = loadImage("oikawa.png");
  optionsbackground = loadImage("fly.png");
  mikasa = loadImage("mikasa.png");
  molten = loadImage("molten.png");
  court = loadImage("court.jpg");
  haikyuu = createFont("haikyuu.ttf", 100);

  // target initialization
  x = width/2;
  y = height/2;
  d = 100;  
  vx = random(-3,4);
  vy = random(-3,4);
  score = 0;
  lives = 5;
  highscore = 0;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("");
}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == INSTRUCTIONS) {
    instructions();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause ();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else { 
    println("Error: Mode = " + mode);
  }
}
