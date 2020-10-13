void intro () {
  // DECORATION
  image(backgroundpic, 0, 0);

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
}

void introClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600)
    mode = INSTRUCTIONS;

  score = 0;
  lives = 5;
}

// background including images and coded pictures
