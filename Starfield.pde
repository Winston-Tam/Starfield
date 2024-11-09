class OddballParticle extends Particle{
  OddballParticle(){
    myX = 250;
    myY = 250;
    mySpeed = 0.5;
    myAngle = (int)(Math.random()*(2*Math.PI));
    myColor = (int)(Math.random()*255);
    myWidth = 18;
    myHeight = 18;
  }
}


class Particle {
  double myX, myY, mySpeed, myWidth, myHeight;
  int myColor;
  int myAngle;
  Particle(){
    myX = 250;
    myY = 250;
    mySpeed = (double)(Math.random()*11);
    myAngle = (int)(Math.random()*(2*Math.PI));
    myColor = (0);
    myWidth = 8;
    myHeight = 8;
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)myWidth, (float)myHeight);
}
}
Particle [] BOOM = new Particle [5000];
OddballParticle [] COLORBOOM = new OddballParticle [55];
void setup(){
  size(500,500);
  noStroke();
  for (int i = 0; i < BOOM.length; i++){
    BOOM[i] = new Particle();
  }
  for (int i = 0; i < COLORBOOM.length; i++){
    COLORBOOM[i] = new OddballParticle();
  }
}

void draw(){
    background(12, 14, 117);
    fill(100, 100, 100);
    for (int i = 0; i < BOOM.length; i++){
      BOOM[i].show();
      BOOM[i].move();
    }
    for (int i = 0; i < COLORBOOM.length; i++){
      COLORBOOM[i].show();
      COLORBOOM[i].move();
    }
}
