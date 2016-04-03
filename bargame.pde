ArrayList<Bar> bars = new ArrayList<Bar>();
int score = 1, ticks = 1;
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
    background(100,300,100);
  }
  textSize(11);
  if (!gameOver){
    if (mousePressed) {
      score++;
      fill(255,255,255);
    } else {
      score -= 3;
      fill(200,0,0);
    }
    
    textAlign(CENTER, CENTER);
    textSize(score/6);
    text(score, width/2, height/2);
  

  }
  grid.draw();
  
  if (gameOver) {
    text(score, width/2, height/2);
  }
}