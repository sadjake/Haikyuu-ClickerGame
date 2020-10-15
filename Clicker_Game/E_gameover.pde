void gameover() {
  image(gameoverpic, -120, 0, 1000, 650);
  textSize(25);
  fill(0);
  text("DEFEAT", 360, 105);
  fill(255);
  text("DEFEAT", 362, 103);
  fill(0);
  textSize(50);
  text("GAME OVER", 275, 180);
  fill(255);
  text("GAME OVER", 277, 178);

  // HIGHSCORE BUTTON
  textSize(50);
  fill(0);
  text("Highscore: " + highscore, 254, 300);
  fill(255);
  text("Highscore: " + highscore, 252, 298);

  // RESTART BUTTON
  fill(255);
  stroke(255, 150, 30);
  strokeWeight(5);
  rect(305, 500, 200, 100);
  fill(255, 150, 30);
  textSize(35);
  text("RESTART", 340, 562);
  fill(0);
  text("RESTART", 338, 564);
}

void gameoverClicks () {
  if (mouseX > 305 && mouseX < 500 && mouseY > 505 && mouseY < 600)
    mode = INTRO;
}
