final float GameSpeed = 10;
final float GameGravity = 5;

float speed;
float gravity;
int GameScreen = 0;

void setup() {
  fullScreen();
  frameRate(30);
  rectMode(CENTER);
  loadStuffs();
  initBackground();
  initPlayers();
  initMissiles();
}

//---------------------------------------------------------------------------------------------------------------------------------

void draw() {
  speed *= 1.001;
  drawBackground();
  devMode();
  drawMissiles();
  drawPlayers();
  if(GameScreen == 0) {
    fill(255,150,0);
    textAlign(CENTER,CENTER);
    textSize(60);
    text("START",width/2,height/2.5);
  }
}

//---------------------------------------------------------------------------------------------------------------------------------

void Start() {
  speed = GameSpeed;
  gravity = GameGravity;
  GameScreen = 1;
  initPlayers();
  initMissiles();
}

//--------------------------------------------------------------------------------------------------------------------------------

void Crash(int a) {
  GameScreen = 2;
  p1UP = false;
  p1DOWN = false;
  p1LEFT = false;
  p1RIGHT = false;
  p2UP = false;
  p2DOWN = false;
  p2LEFT = false;
  p2RIGHT = false;
  speed = 0;
  gravity = 0;
  for(int i=0; i<missiles.length; i++) {
    missiles[i].mSpeed = 0;
  }
  fill(255,100,150);
  textAlign(CENTER,CENTER);
  textSize(50);
  text("Player "+a+" Wins",width/2,height/2.5);
  text("RESTART",width/2,height/2);
}

//--------------------------------------------------------------------------------------------------------------------------------

void devMode() {
  fill(200,50,50);
  textSize(12);
  textAlign(CENTER,CENTER);
  text("X:"+mouseX+" Y:"+mouseY+" FR:"+frameRate,width/2,10);
  textAlign(LEFT,CENTER);
  text("Speed:"+speed,10,300);
}

void loadStuffs() {
  player1 = loadImage("player01.png");
  player2 = loadImage("player01.png");
  Missile1 = loadImage("missile01.png");
}
