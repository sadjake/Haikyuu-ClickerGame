void options() {
  image(optionsbackground, -75, 0, 1000, 670);

  //MIKASA VOLLEYBALL
  fill(255);
  stroke(255, 150, 30);
  rect(200, 250, 150, 150);
  image(mikasa, 195, 244, 162, 162);

  //MOLTEN VOLLEYBALL
  fill(255);
  stroke(255, 150, 30);
  rect(450, 250, 150, 150);
  image(molten, 453, 252, 145, 145);

  // BACK BUTTON
  fill(255);
  stroke(0);
  rect(650, 50, 100, 100);
  fill(0);
  textSize(35);
  text("back", 660, 115);

  // SLIDER

  // DISPLAY
  fill(255);
  stroke(255, 150, 30);
}

void optionsClicks () {
  //back button
  if (mouseX > 650 && mouseX < 750 && mouseY > 50 && mouseY < 150)
    mode = INTRO;

  //mikasa button
  if (mouseX > 200 && mouseX < 350 && mouseY > 250 && mouseY < 400)
    ;

  //molten button
  if (mouseX > 450 && mouseX < 600 && mouseY > 250 && mouseY < 400)
    ;
}
