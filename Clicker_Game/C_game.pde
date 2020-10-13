void game () {
  // BACKGROUND
  background(0, 255, 0);

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
  fill(255);
  circle(x, y, d);

  // PAUSE BUTTON
  stroke(0);
  fill(255);
  circle(100, 100, 100);

  // DISPLAY TARGET MOVEMENT
  x = x + vx;
  y = y + vy;

  // BOUNCING
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}

void gameClicks () {
  if (dist(mouseX, mouseY, x, y) < 50) {
    score = score + 1;
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
  } else {
    lives = lives -1;
    if (lives == 0) {
      mode = GAMEOVER;
    }
  }
}
// background including images and coded pictures
