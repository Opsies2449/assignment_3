int level = 0;
char letter = ' ';
String message = "";
boolean finished = false;

void setup() {
  size(500, 500);
  textAlign(CENTER, CENTER);
  textSize(25);
}

void draw() {
  if (level == 0) {
    background(0);

    fill(255);
    text("Adam's typing game", 245, 60);

    fill(0, 130, 0);
    rect(25, 130, 140, 60);

    fill(180, 130, 0);
    rect(180, 130, 140, 60);

    fill(150, 40, 40);
    rect(335, 130, 140, 60);

    fill(255);
    text("EZPZ", 95, 160);
    text("Normal", 250, 160);
    text("Insane", 405, 160);

    text("Choose a difficulty", 245, 280);
  } else if (finished == false) {
    if (level == 1) {
      background(0, 90, 0);
    }

    if (level == 2) {
      background(120, 85, 0);
    }

    if (level == 3) {
      background(100, 20, 20);
    }

    fill(255);
    text("Typing Test Game", 245, 60);
    text("Type this letter:", 255, 200);

    textSize(60);
    text(letter, 250, 280);
    textSize(25);

    text(message, 245, 380);
  } else {
    background(0);

    fill(255);
    text("Typing Test Game", 245, 60);
    text(message, 245, 250);
  }
}

void mousePressed() {
  if (level == 0) {
    if (mouseY >= 130 && mouseY <= 190) {
      if (mouseX >= 25 && mouseX <= 165) {
        level = 1;
      } else if (mouseX >= 180 && mouseX <= 320) {
        level = 2;
      } else if (mouseX >= 335 && mouseX <= 475) {
        level = 3;
      }

      if (level > 0) {
        message = "";
        newLetter();
      }
    }
  }
}

void newLetter() {
  int n = int(random(3));

  if (level == 1) {
    if (n == 0) letter = 'a';
    if (n == 1) letter = 'b';
    if (n == 2) letter = 'c';
  }

  if (level == 2) {
    if (n == 0) letter = 'r';
    if (n == 1) letter = 'h';
    if (n == 2) letter = 'q';
  }

  if (level == 3) {
    if (n == 0) letter = 'p';
    if (n == 1) letter = 'l';
    if (n == 2) letter = 'z';
  }
}

void keyPressed() {
  if (level > 0 && finished == false) {
    if (key == letter) {
      message = "You can type, you win!";
    } else {
      message = "Wrong key try again!";
    }

    finished = true;
  }
}
