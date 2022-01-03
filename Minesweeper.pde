Grid g;
PImage f;
boolean cleft,cright;
void setup(){
  size(820,800);
  f=loadImage("flag.png");
  g=new Grid();
}
void draw(){
  g.show();
  if(g.checkW()==true){
    background(0,255,0);
  }
  cleft=false;
  cright=false;
}
void mouseClicked(){
  if(mouseButton==LEFT){
    cleft=true;
  }
  else if(mouseButton==RIGHT){
    cright=true;
  }
}
