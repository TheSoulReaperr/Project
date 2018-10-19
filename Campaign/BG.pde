void drawBackground() {
  switch(level) {
    case 1 : background(#ADF5E2); break;
    case 2 : background(#F5F1A6); break;
    case 3 : background(#ADF5E2); break;
    case 4 : background(0);       break;
    case 5 : background(0);       break;
    case 6 : background(#EABC66); break;
    case 7 : background(#7EE4FF); break;
    case 8 : background(#96FCB9); break;
    case 9 : background(0);       break;
    case 10: background(0);       break;
    case 11: background(#ADF5E2); break;
    case 12: background(#E1F0B3); break;
    case 13: background(#7BAFF0); break;
    case 14: background(0);       break;
    case 15: background(0);       break;
    case 16: background(#ADF5E2); break;
    case 17: background(#F5F1A6); break;
    case 18: background(#EABC66); break;
    case 19: background(0);       break;
    case 20: background(0);       break;
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawBottom() {
  rectMode(CENTER);
  noStroke();
  fill(#6F4817);
  rect(width/2, 760, width, 160);
  fill(#4F2800);
  rect(width/2, 695, width, 30);
  stroke(0);
  strokeWeight(1);
  line(0, 680, width, 680);
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawLevel() {
  fill(150,100,250);
  textSize(80);
  text("LEVEL "+level,width/2,height/2.2);
  textSize(30);
  fill(200,100,200);
  text("START",width/2,height/1.8);
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

float starX[];
float starY[];
void initStars() {
  starX = new float[100];
  starY = new float[100];
  for(int i =0;i<100;i++) {
    starX[i] = random(width);
    starY[i] = random(height);
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawStars() {
  stroke(255);
  strokeWeight(1);
  for(int i = 0; i<100; i++) {
    point(starX[i],starY[i]);
  }
}
