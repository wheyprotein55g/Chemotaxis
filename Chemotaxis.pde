bacteria[] jacob;

void setup() {
  size(500, 500);
  jacob = new bacteria[25];
  for (int i = 0; i < jacob.length; i++) {
    jacob[i] = new bacteria();
  }
}

void draw() {
  background(245, 188, 247);
  for (int i = 0; i < jacob.length; i++) {
    jacob[i].show();
    jacob[i].move();
  }
}

class bacteria {
  int myX, myY, myColor;
  bacteria() {
    myX=20;
    myY=250;
    myColor=(int)(Math.random()*255)+50;
  }

  void move() {
    if (mouseX > myX) {
      myX = myX + (int)(Math.random()*7)-2;
    } else {
      myX = myX + (int)(Math.random()*7)-4;
    }

    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*7)-2;
    } else {
      myY = myY + (int)(Math.random()*7)-4;
    }
  }
    void show() {
      noStroke();
      fill(255, 50, myColor);
      ellipse(myX, myY, myX/4, myX/4);
    }
  }

