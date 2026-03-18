//nora hinich |mar 18 |follow mouse creture
PImage img;
void setup() {
  size(500,500);
  img = loadImage("duck.png");
}

void draw() {
  background(200);
// image(img, mouseX - img.width*,mouseY - img.height*2);
 image(img, mouseX - img.width, mouseY - img.height, img.width*4, img.height*4);
 
}

 void keyPressed() {
  if(key == 'w' || key == 'W' ) {
    img = loadImage("newheart.png");
  }
}
