boolean overrect = false;
static final int MAX = 17;
int page;
boolean circleOver1 = false, circleOver2 = false, circleOver3 = false, circleOver4 = false;
 
Button back, next, start, finish, mu;
 
void setup() {
  fullScreen();
  smooth();
  textAlign(CENTER,CENTER); 
  start= new Button("START", width/2-60, height/2-20, 120, 40);
  back = new Button("BACK", 50, height - Button.H - 50, 120, 40);
  next = new Button("NEXT", width - Button.W - 50, height - Button.H - 50, 120, 40);
  finish = new Button("FINISH", width - Button.W - 50, height - Button.H - 50, 120, 40);
  mu= new Button("MENU UTAMA", width/2-60, height/2-20, 120, 40);
}
 
void draw() {
  background(0300);
  fill(Button.TXTC);
  textSize(Button.TXTSZ);
  if (page == 0) start.display();
  if (page > 1 && page < MAX)    back.display();
  if (page < MAX-1 && page > 0 )  next.display();
  if (page == MAX-1) finish.display();
  if (page == MAX) mu.display();
  pageSelector();        
}
 
void mousePressed() {
  /*if (page>0 && page<MAX){
    if(circleOver1) current = 0;*/
  if (page==0 && start.isHovering) ++page;
  else if (page > 1  && page < MAX  && back.isHovering)  --page;
  else if (page < MAX-1  && page > 0 && next.isHovering)  ++page;
  else if (page == MAX-1 && finish.isHovering)  ++page;
  else if (page == MAX && mu.isHovering) page=0;
  redraw();
}
 
void mouseMoved() {
  start.isInside();
  back.isInside();
  next.isInside();
  finish.isInside();
  mu.isInside();
 
  redraw();
}
 
void page0() {
  fill(255);
  textSize(60);
  text("BrainApp",width/2,200);
}
void page1() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
  update();
  option();
}
void page2() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page3() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page4() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page5() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page6() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page7() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page8() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page9() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page10() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page11() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page12() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page13() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page14() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
void page15() {
  textSize(30);
  text("SOAL NO."+page,width/2,height/20);
}
 
void pageSelector() {
  switch(page) {
  case 0: 
    page0();
    break; 
  case 1: 
    page1();
    break; 
  case 2: 
    page2();
    break;    
  case 3: 
    page3();
    break;    
  case 4: 
    page4();
    break;    
  case 5: 
    page5();
    break;   
  case 6: 
    page6();
    break;
  case 7: 
    page7();
    break;
  case 8: 
    page8();
    break;
  case 9: 
    page9();
    break;
  case 10: 
    page10();
    break;
  case 11: 
    page11();
    break;
  case 12: 
    page12();
    break;
  case 13: 
    page13();
    break;
  case 14: 
    page14();
    break;
  case 15: 
    page15();
    break;
  }
}

void option(){
  stroke(0);
  if(circleOver1) fill(150);
  else fill(255);
  ellipse(width/2,height/2,20,20);
  if(circleOver2) fill(150);
  else fill(255);
  stroke(0);
  ellipse(width/2,height/2+30,20,20);
  if(circleOver3) fill(150);
  else fill(255);
  stroke(0);
  ellipse(width/2,height/2+60,20,20);
  if(circleOver4) fill(150);
  else fill(255);
  stroke(0);
  ellipse(width/2,height/2+90,20,20);
}

void update(){
  if(overCircle1(width/2,height/2,20)) {
    circleOver1 = true;
    circleOver2 = circleOver3 = circleOver4  = false;
  }
  else if(overCircle2(width/2,height/2+30,20)) {
    circleOver2 = true;
    circleOver1 = circleOver3 = circleOver4  = false;
  }
  else if(overCircle3(width/2,height/2+60,20)) {
    circleOver3 = true;
    circleOver1 = circleOver2 = circleOver4  = false;
  }
  else if(overCircle4(width/2,height/2+90,20)) {
    circleOver4 = true;
    circleOver1 = circleOver2 = circleOver3  = false;
  }
  else circleOver1 = circleOver2 = circleOver3 = circleOver4  = false;
}

boolean overCircle1(int x, int y, int diameter) 
{
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) return true;
  else return false;
}
boolean overCircle2(int x, int y, int diameter) 
{
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) return true;
  else return false;
}
boolean overCircle3(int x, int y, int diameter) 
{
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) return true;
  else return false;
}
boolean overCircle4(int x, int y, int diameter) 
{
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) return true;
  else return false;
}


class Button {
  static final int W = 120, H = 40, TXTSZ = 020;
  static final color BTNC = #00A0A0, HOVC = #00FFFF, TXTC = 0;
 
  final String label;
  final short x, y, xW, yH;
 
  boolean isHovering;
 
  Button(String txt, int xx, int yy, int W, int H) {
    label = txt;
 
    x = (short) xx;
    y = (short) yy;
 
    xW = (short) (xx + W);
    yH = (short) (yy + H);
  }
 
  void display() {
    fill(isHovering? HOVC:BTNC);
    rect(x, y, W, H);
 
    fill(TXTC);
    text(label, x + W/2, y + H/2);
  }
 
  boolean isInside() {
    return isHovering = mouseX > x & mouseX < xW & mouseY > y & mouseY < yH;
  }
}
