// nora hinich | 4 mar 2026 | shapeGame
int x, y,tx,ty,score;
float tw;
PImage player;
PImage target;
void setup() {
  size(800, 800);
  x=width/2;
  y=height/2;
  tx=int(random(20,width-20));
   ty=int(random(20,height-20));
   tw = 200.0;
   score = 0;
   player = loadImage("player.png");
   target = loadImage("target.png");
}

void draw() {
  background(127);
  scorePanel();
  target();
  imageMode(CENTER);
  image(player,x,y);
}

void target() {
  float d = dist(x,y,tx,ty);
  println(d);
  println(score);
  if(tw<10){
  gameOver();
  }
  rectMode(CENTER);
  image(target,tx,ty,tw,tw);
  target.resize(int(tw),int(tw));
  if(d<50) {
    score = score + 20;
    tx=int(random(20,width-20));
   ty=int(random(20,height-20));  
  }
}

void scorePanel() {
  rectMode(CENTER);
  fill(255,250);
  rect(width/2,15,width,30);
  tw = tw - 0.1;
  if(tw<10);{
  fill(0);
  textSize(30);
  text("score:" + score ,20,25);
}
}

void gameOver() {
background(0);
fill(255,0,0);
textSize(40);
text("game over!" ,width/2, height/2);

}




void keyPressed() {
  //edge looping
  if (x > width) {
    x = 0;
  }


  if (x < 0) {
    x = width;
  }

  if (y < 0) {
    y = height;
  }

  if (y > height) {
    y = 0;
  }



  //WASD and arrow movement
  if (key == 'w' || key =='W' || keyCode == UP) {
    y = y - 10;
  } else if (key== 's' || key== 'S' || keyCode == DOWN) {
    y = y + 10;
  } else if (key== 'a' || key== 'A' || keyCode == LEFT) {
    x = x - 10;
  } else if (key== 'd' || key== 'D'|| keyCode == RIGHT) {
    x = x + 10;
  }
}
