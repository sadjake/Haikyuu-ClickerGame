void intro () {
  // DECORATION
  image(backgroundpic, 0, 0);
  textSize(50);
  fill(255, 150, 30);
  text("THE CLICKER GAME", 170, 230);
  fill(0);
  text("THE CLICKER GAME", 167, 233);

  // PLAY BUTTON
  fill(255);
  stroke(255, 150, 30);
  strokeWeight(5);
  rect(300, 500, 200, 100);
  fill(255, 150, 30);
  text("play", 347, 565);
  fill(0);
  textFont(haikyuu);
  textSize(50);
  text("play", 345, 567);

  // OPTIONS
  fill(255);
  stroke(255, 150, 30);
  strokeWeight(5);
  rect(600, 550, 100, 50);
  fill(255, 150, 30);
  textSize(15);
  text("OPTIONS", 624, 581);
  fill(0);
  textFont(haikyuu);
  textSize(15);
  text("OPTIONS", 623, 582);
}

void introClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600)
    mode = INSTRUCTIONS;

  if (mouseX > 600 && mouseX < 700 && mouseY > 550 && mouseY < 600)
    mode = OPTIONS;

  x = width/2;
  y = height/2;
  d = 100;  
  score = 0;
  lives = 5;
  vx = random(-3, 4);
  vy = random(-3, 4);
}

// background including images and coded pictures
