void initMissiles() {
  float x =1400;
  int No = 2;
  float m1 = 1;
  float m2 = 1;
  float Hom = 0;
  switch(level) {
    case 1 : No = 2; m1 = 1.2; m2 = 1.8; Hom = 1.0; break;
    case 2 : No = 2; m1 = 1.3; m2 = 1.8; Hom = 1.1; break;
    case 3 : No = 2; m1 = 1.3; m2 = 1.9; Hom = 1.2; break;
    case 4 : No = 2; m1 = 1.4; m2 = 2.0; Hom = 1.3; break;
    case 5 : No = 3; m1 = 1.2; m2 = 1.8; Hom = 1.0; break;
    case 6 : No = 3; m1 = 1.3; m2 = 1.8; Hom = 1.1; break;
    case 7 : No = 3; m1 = 1.3; m2 = 2.0; Hom = 1.2; break;
    case 8 : No = 3; m1 = 1.4; m2 = 2.1; Hom = 1.3; break;
    case 9 : No = 3; m1 = 1.5; m2 = 2.2; Hom = 1.4; break;
    case 10: No = 3; m1 = 1.6; m2 = 2.4; Hom = 1.5; break;
    case 11: No = 2; m1 = 1.4; m2 = 2.1; Hom = 1.6; break;
    case 12: No = 2; m1 = 1.7; m2 = 2.6; Hom = 1.7; break;
    case 13: No = 2; m1 = 1.8; m2 = 2.7; Hom = 1.8; break;
    case 14: No = 3; m1 = 1.8; m2 = 2.8; Hom = 1.8; break;
    case 15: No = 3; m1 = 1.8; m2 = 3.0; Hom = 2.0; break;
    case 16: No = 2; m1 = 1.5; m2 = 2.0; Hom = 2.1; break;
    case 17: No = 2; m1 = 1.6; m2 = 2.1; Hom = 2.2; break;
    case 18: No = 2; m1 = 1.7; m2 = 2.2; Hom = 2.3; break;
    case 19: No = 2; m1 = 1.8; m2 = 2.3; Hom = 2.4; break;
    case 20: No = 3; m1 = 1.5; m2 = 2.0; Hom = 2.0; break;
  }
  missiles = new Missile[No];
  for (int i=0; i< missiles.length; i++) {
    missiles[i] = new Missile(x, m1,m2,Hom);
    x+=600;
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void initFinishLines() {
  switch(level) {
    case 1 : finish = new FinishLine(3500); break;
    case 2 : finish = new FinishLine(4000); break;
    case 3 : finish = new FinishLine(4500); break;
    case 4 : finish = new FinishLine(5500); break;
    case 5 : finish = new FinishLine(6000); break;
    case 6 : finish = new FinishLine(6500); break;
    case 7 : finish = new FinishLine(7000); break;
    case 8 : finish = new FinishLine(7500); break;
    case 9 : finish = new FinishLine(8000); break;
    case 10: finish = new FinishLine(8500); break;
    case 11: finish = new FinishLine(9000); break;
    case 12: finish = new FinishLine(9500); break;
    case 13: finish = new FinishLine(10000);break;
    case 14: finish = new FinishLine(10500);break;
    case 15: finish = new FinishLine(11000);break;
    case 16: finish = new FinishLine(12000);break;
    case 17: finish = new FinishLine(13000);break;
    case 18: finish = new FinishLine(14000);break;
    case 19: finish = new FinishLine(15000);break;
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void InitBackground() {
  switch(level) {
    case 1 : initMountains(); break;
    case 2 : initHills();     break;
    case 3 : initPlatforms();  break;
    case 4 : initMountains(); break;
    case 5 : initPlatforms();  break;
    case 11: initMountains(); break;
    case 12: initHills();     break;
    case 13: initHills();     break;
    case 14: initMountains(); break;
    case 15: initMountains(); break;
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void InitializeObjects() {
  initSeas();
  initShips();
  initStars();
  initCaves();
  initClouds();
  initPlayer();
  initMissiles();
  initBuildings();
  initFinishLines();
  InitBackground();
}
