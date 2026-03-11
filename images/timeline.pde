// nora hinich | 23 feb 2026 | timeline 
//nora hinich | 25 feb 2026 | timline
void setup() {
  size(950,400);
}
void draw() {
  background(#fbb8ff);
  drawRef();
   histEvent(120,200,"March 1881",true,"Pavlova is born in St. Petersburg, Russia.");
    histEvent(250,200,"March 1891",true," She attends The Sleeping Beauty and becomes inspired to pursue ballet.");
  histEvent(255,300,"sept1891",false,"Pavlova is accepted into the Imperial Ballet School.");
  histEvent(465,200,"jan 1905",true,"She performs The Dying Swan, which becomes her signature role.");
  histEvent(510,300,"1907",false,"Pavlova begins her first international tour, gaining worldwide fame.");
  histEvent(630,200,"1911",true,"She forms her own ballet company and moves to London.");
  histEvent(700,300,"1913",false,"Pavlova tours the world, bringing classical ballet to new audiences." );
  histEvent(800,200,"1920",true,"married her manger victor dandreshe kepther marrage a secret until 1924");
  
}
void drawRef(){
  textAlign(CENTER);
  textSize(36);
  text("anna pavalova:timeline",width/2,70);
  textSize(20);
   text("by nora hinich",width/2,90);
   strokeWeight(3);
   stroke(#DB57A2);
   line(50,250,900,250); 
   textSize(16);
   text("1880",50,265);
   text("1930",900,275);
   strokeWeight(2);
   line(145,245,145,255);
   line(900,245,900,255);
   line(150,245,150,255);
   line(250,245,250,255);
   line(350,245,350,255);
   line(450,245,450,255);
   line(550,245,550,255);
   line(650,245,650,255);
   line(750,245,750,255);
}
void histEvent(int x, int y, String title,boolean top,String detail) {
  if(top == true) {
     line(x,y,x-15,y+50);
  } else {
   line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  fill(#A4DAD8);
  strokeWeight(2);
  rect(x,y,100,30,10);
  fill(#DB57A2);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY <y+15) {
    text(detail,width/2,350);
  }
}











//...anna pavalova
//...Feb 1881: Pavlova is born in St. Petersburg, Russia.
//...Mar 1891: She attends The Sleeping Beauty and becomes inspired to pursue ballet.
//...Sept 1891: Pavlova is accepted into the Imperial Ballet School.
//...Jan 1905: She performs The Dying Swan, which becomes her signature role.
//...1907: Pavlova begins her first international tour, gaining worldwide fame.
//...1911: She forms her own ballet company and moves to London.
//...1913–1925: Pavlova tours the world, bringing classical ballet to new audiences.
//...1931: Pavlova dies in The Hague, leaving a lasting legacy in ballet.
//...
//...
