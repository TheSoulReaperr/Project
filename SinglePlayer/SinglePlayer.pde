import de.bezier.data.sql.*;

final float GameSpeed = 10;
final float GameGravity = 5;

float speed;
float gravity;
int GameScreen = 0;
int score = 0;
int coinAdd = 0;

void setup() {
  fullScreen();
  frameRate(30);
  rectMode(CENTER);
  loadStuffs();
  initBackground();
  initBuildings();
  initCoins();
  initPlayer();
  initMissiles();
  connectSQL();
}

//--------------------------------------------------------------------------------------------------------------------------------

void draw() {
  speed *= 1.001;
  score += ceil(speed/10);
  drawBackground();
  drawBuildings();
  //devMode();
  drawCoins();
  drawTexts();
  drawMissiles();
  drawPlayer();
  if(GameScreen == 0) {
    fill(255,150,0);
    textAlign(CENTER,CENTER);
    textSize(55);
    text("START",width/2,height/3);
  }
}

//--------------------------------------------------------------------------------------------------------------------------------

void drawTexts() {
  textAlign(CENTER,CENTER);
  fill(100,255,100);  textSize(50);
  text(score,width/2,100);
  fill(100,150,250);  textSize(30);
  text("HighScore:"+HighScore,width/2,50);
  fill(#EDDA2D);
  text("Coins:"+coinAdd,80,50);
}

//--------------------------------------------------------------------------------------------------------------------------------

void Start() {
  score = 0;
  coinAdd = 0;
  coinflag = false;
  speed = GameSpeed;
  gravity = GameGravity;
  GameScreen = 1;
  initCoins();
  initPlayer();
  initMissiles();
}

//--------------------------------------------------------------------------------------------------------------------------------

boolean coinflag = false;
void Crash() {
  up = false;
  down = false;
  left = false;
  right = false;
  GameScreen = 2;
  speed = 0;
  gravity = 0;
  for(int i=0; i<missiles.length; i++) {
    missiles[i].mSpeed = 0;
    missiles[i].Homing = 0;
  }
  if(coinflag == false) {
    coin += coinAdd;
    coinAdd = 0;
    coinflag = true;
  }
  fill(255,100,150);
  textAlign(CENTER,CENTER);
  textSize(50);
  text("RESTART",width/2,height/2);
  fill(255,255,100);
  textSize(25);
  text("Coins : "+coin,width/2,height/5);
  db.query("UPDATE loginreg SET u_coins = "+ coin + " WHERE u_username = '" +username +"'");
  if(score > HighScore) {
    HighScore = score;
    db.query("UPDATE loginreg SET u_highscore = "+ HighScore + " WHERE u_username = '" +username +"'");
  }
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
  Missile1 = loadImage("missile01.png");
}
