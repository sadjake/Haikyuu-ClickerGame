void options() {
  image(optionsbackground, -75, 0, 1000, 670);

  //MIKASA VOLLEYBALL
  fill(85, 80, 255);
  stroke(255, 150, 30);
  rect(200, 250, 150, 150);

  //MOLTEN VOLLEYBALL
  fill(255, 20, 10);
  stroke(255, 150, 30);
  rect(450, 250, 150, 150);

  // BACK BUTTON
  fill(255);
  stroke(0);
  rect(650, 50, 100, 100);
  fill(0);
  textSize(35);
  text("back", 660, 115);

  // SLIDER
  fill(indicatorColor);
  line(250, 440, 250, 600);
  circle(250, sliderY, slider);

  // DISPLAY
  fill(indicatorColor);
  stroke(255, 150, 30);
  ellipse(550, 525, thickness, thickness);
}

void mouseDragged() {
  if (mode == OPTIONS) {
    controlSlider();
  }
}

void controlSlider () {
  if (mouseX > 200 && mouseX < 300 && mouseY > 440 && mouseY < 600) {
    sliderY = mouseY;
    thickness = map(sliderY, 440, 600, 10, 100);
    d = thickness;
  }
}

void optionsClicks () {
  //back button
  if (mouseX > 650 && mouseX < 750 && mouseY > 50 && mouseY < 150)
    mode = INTRO;

  //mikasa button
  if (mouseX > 200 && mouseX < 350 && mouseY > 250 && mouseY < 400)
    indicatorColor = blue;

  //molten button
  if (mouseX > 450 && mouseX < 600 && mouseY > 250 && mouseY < 400)
    indicatorColor = red;
}
