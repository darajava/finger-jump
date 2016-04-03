ArrayList<Bar> bars = new ArrayList<Bar>();
int score = 1;
boolean gameOver = false;

void setup() {
  size(320, 480);
  frameRate(60);
  strokeWeight(height/100);
  bars.add(new Bar());
  
}

void draw() {
  if (gameOver) {
    background(300,100,100);
  } else {
    background(100,300,100);
  }
  textSize(11);
  if (!gameOver){
    if (mousePressed) {
      score++;
      fill(200,200,200);
    } else {
      score -= 3;
      fill(200,0,0);
    }
  }
  textAlign(CENTER, CENTER);
  textSize(width/10);
  text(score, width/2, 50);

  if (score % 100 == 0) {
    bars.add(new Bar());
  }

  for (int i = 0; i < bars.size(); i++){
    bars.get(i).draw();
  }
  
  if (gameOver) {
    text(score, width/2, 50);
  }
}