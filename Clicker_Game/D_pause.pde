void pause () {
  text("paused", 400, 400);
}

void pauseClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = GAME;
  }
}
