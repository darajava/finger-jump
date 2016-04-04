ArrayList<Bar> bars = new ArrayList<Bar>();
int score = 600, ticks = 2800;
boolean gameOver = false;
Grid grid;

void setup() {
  size(320, 480);
  frameRate(60);
  strokeWeight(height/100);
  grid = new Grid();
}

void draw() {
  if (gameOver) {
    background(300,100,100);
  } else {
    if (mousePressed)
      background(0, 300, 0);
    else
      background(100,300,100);
  }

  if (!gameOver){
    if (mousePressed) {
      score++;
      fill(255,255,255);
    } else {
      score -= 3;
      fill(200,0,0);
    }
    
    textAlign(CENTER, CENTER);
    textSize(score/8);
    if (score/8 < 18) {
      textSize(18);
    }
    if (score/8 > width/2){
      textSize(width/2);
    }
    text(score, width/2, height/2);
  }
  grid.draw();
  
  if (gameOver) {
    text(score, width/2, height/2);
  }
}