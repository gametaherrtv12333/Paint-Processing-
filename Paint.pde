int circleSize = 20;


//Colors 0.GREEN 1.RED 2.BLUE 3.BLACK 4.GRAY 5.YELLOW 6.VIOLET 7.PINK 8.WHITE

color red = #E3292C;
color green = #0EEA3F;
color black = #0D0D0D;
color gray = #4D4D4D;
color yellow = #FFF536;
color pink = #F525DA;
color white = #FFFCFF;
color violet = #BB3EFF;

color DefaultColor = gray;

color SelectColor = DefaultColor;

int selectInt = 0;


void setup() {
  size(1400, 700);
  noStroke();
  background(#F0F0F0);
}

void draw() {
  frameRate(360);
  textSize(70);
  text("COLOR",20,80);
  if (mousePressed && (mouseButton == LEFT)) {
    fill(SelectColor);
    circle(mouseX, mouseY, circleSize);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    fill(#F0F0F0);
    circle(mouseX, mouseY, circleSize);
    fill(SelectColor);
  }

  if (selectInt == 1) {
    SelectColor = red;
    fill(SelectColor);
  }
  if (selectInt == 2) {
    SelectColor = green;
    fill(SelectColor);
  }
  if (selectInt == 3) {
    SelectColor = gray;
    fill(SelectColor);
  }
  if (selectInt == 4) {
    SelectColor = black;
    fill(SelectColor);
  }
  if (selectInt == 5) {
    SelectColor = yellow;
    fill(SelectColor);
  }
  if (selectInt == 6) {
    SelectColor = pink;
    fill(SelectColor);
  }
  if (selectInt == 7) {
    SelectColor = white;
    fill(SelectColor);
  }
  if (selectInt == 8) {
    SelectColor = violet;
    fill(SelectColor);
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (e == 1.0 || e == 1) {
    circleSize -= 1;
    println("Size -= 1");
  }
  if (e == -1.0 || e == -1) {
    circleSize += 1;
    println("Size += 1");
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    if (SelectColor == DefaultColor) {
      return;
    }
    if (SelectColor != DefaultColor) {
      selectInt -= 1;
    }
    }
  if (keyCode == RIGHT){
    if (selectInt >= 8){
      return;
    }
    selectInt += 1;
  }
  }
