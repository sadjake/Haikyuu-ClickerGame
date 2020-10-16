void game () {
  // BACKGROUND
  background(255);
  image(court,-100,0,1000,653);

  // SCORE AND LIVES
  textSize(50);
  fill(255, 150, 30);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  fill(255);
  text("Score: " + score, width/2-2, 52);
  text("Lives: " + lives, width/2-2, 102);

  // DISPLAY TARGET 
  strokeWeight(5);
  fill(indicatorColor);
  circle(x,y,thickness);

  // PAUSE BUTTON
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  fill(0);
  text("||",86,119);

  // DISPLAY TARGET MOVEMENT
  x = x + vx;
  y = y + vy;

  // BOUNCING
  if (x < thickness/2 || x > width-thickness/2) {
    vx = vx * -1;
  }
  if (y < thickness/2 || y > height-thickness/2) {
    vy = vy * -1;
  }
}

void gameClicks () {
  if (dist(mouseX, mouseY, x, y) < 50) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
  } else {
    lives = lives -1;
    if (lives == 0) {
      mode = GAMEOVER;
    } 
    if (score>highscore) {
    highscore = score;
    }
  }
}
