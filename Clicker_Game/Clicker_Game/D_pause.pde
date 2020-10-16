void pause () {
  fill(255, 150, 30);
  text("paused", 325, 350);
  fill(255);
  text("paused",323,352);
}

void pauseClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = GAME;
  }
}
