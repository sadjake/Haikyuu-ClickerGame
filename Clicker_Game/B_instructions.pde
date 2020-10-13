void instructions() {
  // DECORATION
  background(0);
  fill(255, 150, 30);
  textSize(50);
  text("INSTRUCTIONS", 248, 102);
  fill(255);
  textSize(50);
  text("INSTRUCTIONS", 250, 100);
  textSize(20);
  text("The Karasuno volleyball team is going against Aoba Johsai.", 110, 250);
  text("Click the volleyball as many times as possible without losing lives.", 60, 300);
  text("If you lose all your lives, the game will end.", 170, 350);

  // BUTTON
  rect(300, 500, 200, 100);
  fill(255, 150, 30);
  textSize(50);
  text("begin", 337, 565);
  fill(0);
  textFont(haikyuu);
  textSize(50);
  text("begin", 335, 567);
}

void instructionsClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600)
    mode = GAME;
}
