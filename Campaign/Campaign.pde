final int GameLevel = 1;
final float GameSpeed = 20;
final float GameGravity = 5;

boolean Click = false;
boolean Crashed = false;
boolean Win = false;
PFont Font;
float speed;
float gravity;
int level;

void setup(){
  loadStuffs();
  fullScreen();
  frameRate(30);
  textFont(Font);
  textAlign(CENTER,CENTER);
  level = GameLevel;
  speed = GameSpeed;
  gravity = GameGravity;
  InitializeObjects();
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void draw() {
  drawBackground();
  switch(level) 
  {
    case 1 : drawLevel1(); break; 
    case 2 : drawLevel2(); break;
    case 3 : drawLevel3(); break;
    case 4 : drawLevel4(); break;
    case 5 : drawLevel5(); break;
    case 6 : drawLevel6(); break;
    case 7 : drawLevel7(); break;
    case 8 : drawLevel8(); break;
    case 9 : drawLevel9(); break;
    case 10: drawLevel10();break;
    case 11: drawLevel11();break;
    case 12: drawLevel12();break;
    case 13: drawLevel13();break;
    case 14: drawLevel14();break;
    case 15: drawLevel15();break;
    case 16: drawLevel16();break;
    case 17: drawLevel17();break;
    case 18: drawLevel18();break;
    case 19: drawLevel19();break;
    case 20: drawLevel20();break;
  }
  crashed();
  win();
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void loadStuffs() {
  ship1 = loadImage("ship01.png");
  playerImg = loadImage("plane01.png");
  missileImg1 = loadImage("missile01.png");
  Font =  createFont("OCR A Std",100);
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void crashed() {
  if(Crashed) {
    fill(200,100,100);
    textSize(40);
    textAlign(CENTER,CENTER);
    text("RESTART",width/2,height/2.2);
    speed = 0;
    gravity = 0;
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void win() {
  if(Win) {
    Crashed = false;
    fill(100,255,100);
    textSize(40);
    textAlign(CENTER,CENTER);
    text("LEVEL"+level+" COMPLETE",width/2,height/2.2);
    textSize(35);
    fill(0,200,200);
    text("NEXT LEVEL",width/2,height/1.8);
    speed =0;
    gravity =0;
    for (int i=0; i< missiles.length; i++) {
      missiles[i].MissileSpeed = 0;
      missiles[i].homing = 0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void startGame() {
 if (Click == false) {
    Click = true;
    Crashed =false;
    speed = GameSpeed;
    gravity = GameGravity;
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void restartGame() {
  speed = GameSpeed;
  gravity = GameGravity;
  Crashed = false;
  playerX = 50;
  playerY = height/3;
  InitializeObjects();
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawCommon() {
  drawfinish();
  drawMissiles();
  drawPlayer();  
  if (Click == false) {
    speed =0;
    gravity = 0;
    drawLevel();
  } else {
    speed = GameSpeed;
    gravity = GameGravity;
  }
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void Crash() {
  speed = 0;
  gravity = 0;
  Crashed = true;
  for (int i=0; i< missiles.length; i++) {
    missiles[i].MissileSpeed = 0;
    missiles[i].homing = 0;
  }
}
