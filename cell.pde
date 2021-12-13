class Cell{
  public int num,row,column;
  public boolean bomb,flag, clicked;
  public float w,h;
  public Cell(int row,int column){
    num=0;
    bomb=false;
    flag=false;
    clicked=false;
    w=20;
    h=20;  
    
    this.row=row;
    this.column=column;
  }
  public void show(){
    fill(255,255,255);
    if(bomb==true && clicked==true){
      fill(255,0,0);
      rect(column*20,row*20,w,h);
    }
    else if(clicked==true){
      fill(0,255,0);
      rect(column*20,row*20,w,h);
      fill(0);
      text(num,column*20+10,row*20+10);
    }
    else{
      fill(255);
      rect(column*20,row*20,w,h);
    }
  }
  public boolean mouseover(){
    if((mouseX>= column*20 && mouseX<=column*20+20) && (mouseY>=row*20 && mouseY<=row*20+20)){
      return(true);
    }
    else{
      return(false);
    }
  }
  public void update(){
    show();
    if(mouseover()==true && mousePressed==true){
      clicked=true;
    }
  }
}
